/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

/**
@file pmenu
@author todd ingalls  - testcase@asu.edu

*/

#include "ext.h"
#include "ext_obex.h"
#include "ext_dictionary.h"
#include "ext_dictobj.h"
#include "jpatcher_api.h"
#include "jpatcher_syms.h"
#include "jgraphics.h"
#include "ext_boxstyle.h"
#include "common/commonsyms.c"

#include "jpatcher_syms.h"

static t_symbol *ps_pmenu_dict;
static t_symbol *ps_pmenu_name;
static t_symbol *ps_pmenu_contents;
static t_symbol *ps_pmenu_data;




/**********************************************************************/
// Data Structures
typedef struct _pmenu {
t_jbox                j_box;
void*               item_outlet;
void*               id_outlet;
void*               data_outlet;


t_jrgba                textcolor;
t_jrgba                bgcolor;
t_jrgba             highlightedtextcolor;
t_jrgba             highlightedbgcolor;

t_dictionary*       dict;
t_jpopupmenu*       menu;
t_hashtab*          item_hashtab;
t_hashtab*          data_hashtab;


int                 id;
long                current_item;

t_symbol*           prefix;


} t_pmenu;


typedef struct _menu_info {
t_pmenu *object;
t_symbol*   dict_name;
t_jpopupmenu*   menu;

} t_menu_info;

/**********************************************************************/
// Prototypes

t_pmenu *pmenu_new(t_symbol *s, short argc, t_atom *argv);
void pmenu_free(t_pmenu *x);
void pmenu_paint(t_pmenu *x, t_object *view);
void pmenu_mousedown(t_pmenu *x,t_object *patcherview, t_pt pt, long modifiers);
void pmenu_assist(t_pmenu *x, void *b, long m, long a, char *s);
void pmenu_dictionary(t_pmenu *x, t_symbol *s);

void pmenu_attomarray_traverse(t_atom *a, void *x);
void pmenu_dictionary_parse(t_pmenu *x, t_symbol *s, t_jpopupmenu *menu);
t_max_err pmenu_notify(t_pmenu *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void pmenu_jsave(t_pmenu *x, t_dictionary *d);
void pmenu_int(t_pmenu *x, long n);
void pmenu_clear(t_pmenu *x);
void pmenu_open_dictionary(t_pmenu *x, t_symbol *s);
t_max_err pmenu_setvalueof(t_pmenu *x, long ac, t_atom *av);
t_max_err pmenu_getvalueof(t_pmenu *x, long *ac, t_atom **av);
void pmenu_preset(t_pmenu *x);
void pmenu_assign(t_pmenu *x, long item, long notify);
t_max_err pmenu_setattr_prefix(t_pmenu *x, void *attr, long ac, t_atom *av);
void pmenu_rebuild_menu(t_pmenu *x);

void pmenu_symbols_init();

void pmenu_symbols_init()
{
ps_pmenu_dict = gensym("pmenu_dict");
ps_pmenu_name = gensym("name");
ps_pmenu_contents = gensym("contents");
ps_pmenu_data = gensym("data");

}


/**********************************************************************/
// Globals and Statics

static t_class *s_pmenu_class = NULL;


/**********************************************************************/
// Class Definition and Life Cycle

void ext_main(void *r)
{
t_class *c;

jpatcher_syms_init();
common_symbols_init();
pmenu_symbols_init();
c = class_new("pmenu",(method)pmenu_new,(method)pmenu_free,sizeof(t_pmenu),(method)NULL,A_GIMME,0L);

c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FONTATTR | JBOX_TEXTJUSTIFICATIONATTR);

class_addmethod(c, (method)pmenu_paint,             "paint",        A_CANT, 0);
class_addmethod(c, (method)pmenu_mousedown,         "mousedown",    A_CANT, 0);
class_addmethod(c, (method)pmenu_dictionary,        "dictionary",     A_SYM, 0);
class_addmethod(c, (method)pmenu_clear,             "clear",        A_CANT, 0);
class_addmethod(c, (method)pmenu_assist,            "assist",        A_CANT, 0);
class_addmethod(c, (method)pmenu_notify,            "notify",        A_CANT, 0);
class_addmethod(c, (method)pmenu_int,               "int", A_LONG, 0);
class_addmethod(c, (method)pmenu_jsave,             "jsave",        A_CANT, 0);
class_addmethod(c, (method)pmenu_getvalueof,        "getvalueof", A_CANT, 0);
class_addmethod(c, (method)pmenu_setvalueof,        "setvalueof", A_CANT, 0);
class_addmethod(c, (method)pmenu_preset,            "preset", 0);

//background color of selected menu item
CLASS_ATTR_STYLE_RGBA_PREVIEW(c, "highlightedbgcolor", 0, t_pmenu, highlightedbgcolor, "Highlighted Background Color", "rect_fill");
CLASS_ATTR_BASIC(c, "highlightedbgcolor", 0);
CLASS_ATTR_CATEGORY(c,        "highlightedbgcolor", 0, "Color");
CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "highlightedbgcolor", 0, ".3764705882 0.3843137255 .4 1.");
class_attr_stylemap(c, "highlightedbgcolor", "selectioncolor");

//text color of selected menu item
CLASS_ATTR_STYLE_RGBA_PREVIEW(c, "highlightedtext", 0, t_pmenu, highlightedtextcolor, "Highlighted Text Color", "rect_fill");
CLASS_ATTR_BASIC(c, "highlightedtext", 0);
CLASS_ATTR_CATEGORY(c,        "highlightedtext", 0, "Color");
CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "highlightedtext", 0, "1. 1. 1. 1.");
class_attr_stylemap(c, "highlightedtext", "elementcolor");



//background color of menu
CLASS_ATTR_STYLE_RGBA_PREVIEW(c,"bgfillcolor",0,t_pmenu, bgcolor,"Background Color","rect_fill");
CLASS_ATTR_BASIC(c, "bgfillcolor", 0);
CLASS_ATTR_CATEGORY(c,        "bgfillcolor", 0, "Color");
CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "bgfillcolor", 0, ".4 .4 .4 1.");
class_attr_stylemap(c, "bgcolor", "bgcolor");

//text color of menu
CLASS_ATTR_RGBA(c, "textcolor", 0, t_pmenu, textcolor);
CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "textcolor", 0, "1. 1. 1. 1.");
CLASS_ATTR_STYLE_LABEL(c, "textcolor", 0, "rgba", "Text Color");
CLASS_ATTR_CATEGORY(c, "textcolor", 0, "Color");
class_attr_stylemap(c, "textcolor", "textcolor_inverse");

//default size
CLASS_ATTR_DEFAULT(c,"patching_rect",0, "0. 0. 80. 20.");

//prefix to be prepended to menu item
CLASS_ATTR_SYM(c, "prefix", 0, t_pmenu, prefix);
CLASS_ATTR_ACCESSORS(c, "prefix", (method)NULL, (method)pmenu_setattr_prefix);
CLASS_ATTR_BASIC(c, "prefix", 0);
CLASS_ATTR_CATEGORY(c, "prefix", 0, "Value");
CLASS_ATTR_LABEL(c, "prefix", 0, "Prefix");
CLASS_ATTR_SAVE(c, "prefix", 0);

class_register(CLASS_BOX, c);
s_pmenu_class = c;
}



t_pmenu *pmenu_new(t_symbol *name, short argc, t_atom *argv)
{
t_pmenu *x;
t_dictionary *d = NULL;

if (!(d = object_dictionaryarg(argc,argv)))
    return NULL;

x = (t_pmenu *)object_alloc(s_pmenu_class);
if (x) {
    long        flags;
    t_object    *textfield;

    flags = JBOX_DRAWFIRSTIN | JBOX_NODRAWBOX | JBOX_DRAWINLAST | JBOX_DRAWBACKGROUND | JBOX_GROWY | JBOX_TEXTFIELD;

    jbox_new(&x->j_box, flags, argc, argv);
    x->j_box.b_firstin = (t_object *) x;
    
    x->data_outlet = outlet_new(x, NULL);
    x->id_outlet = outlet_new(x, NULL);
    x->item_outlet = outlet_new(x, NULL);
    
    x->menu = jpopupmenu_create();
    textfield = jbox_get_textfield((t_object *) x);
    x->prefix = _sym_nothing;
    
    x->current_item = 1;
    
    
    if (textfield) {
        textfield_set_editonclick(textfield, 0);
        textfield_set_textcolor(textfield, &x->textcolor );
        textfield_set_bgcolor(textfield,&x->bgcolor);
        char *buff = " ";
        object_method(jbox_get_textfield((t_object *)x), _sym_settext, buff);
        
        textfield_set_useellipsis(jbox_get_textfield((t_object *)x),JGRAPHICS_TEXTLAYOUT_USEELLIPSIS);
        textfield_set_wordwrap(jbox_get_textfield((t_object *)x),JGRAPHICS_TEXTLAYOUT_NOWRAP );
        
    } //what should happen if there is no textfield?

    jbox_processlegacydefaults((t_jbox *)x, d, 0);


    x->item_hashtab = (t_hashtab *)hashtab_new(0);
    x->data_hashtab = (t_hashtab *)hashtab_new(0);
    x->dict = dictionary_new();
    
    t_object *s = NULL;
    
    
    attr_dictionary_process(x, d);

    dictionary_getdictionary(d, ps_pmenu_dict, &s);

    if (s) {
        dictionary_clone_to_existing((t_dictionary*)s, x->dict);//x->dict shadows  current dictionary
        
        t_symbol *dict_name;
        dict_name = dictobj_namefromptr((t_dictionary*)s);
        if (!dict_name)
            dictobj_register(x->dict, &dict_name);
        pmenu_open_dictionary(x, dict_name);
    }
    
    jbox_ready((t_jbox *)x);
    
}
return x;
}


//set the prefix attribute.
t_max_err pmenu_setattr_prefix(t_pmenu *x, void *attr, long ac, t_atom *av)
{
if (ac && av) {
    x->prefix = atom_getsym(av);
} else {
    
    x->prefix = NULL;
}
return MAX_ERR_NONE;
}


void pmenu_free(t_pmenu *x)
{
jpopupmenu_destroy(x->menu);
hashtab_clear(x->item_hashtab);
hashtab_clear(x->data_hashtab);
jbox_free((t_jbox *)x);
object_free(x->dict);
}

void pmenu_clear(t_pmenu *x) {
jpopupmenu_clear(x->menu);
hashtab_clear(x->item_hashtab);
hashtab_clear(x->data_hashtab);
jbox_redraw((t_jbox *)x);
}


//walk through an atom array from a dict
void pmenu_attomarray_traverse(t_atom *a, void *obj)
{

t_pmenu *x = ((t_menu_info*)obj)->object;
t_jpopupmenu *m = ((t_menu_info*)obj)->menu;

//if the atom is a dictionary, parse it
if(atomisdictionary (a)) {
    t_dictionary *dict = (t_dictionary*)atom_getobj(a);
    t_symbol *dict_name;
    dict_name = dictobj_namefromptr((t_dictionary*)dict);
    if (!dict_name) {
        dictobj_register(dict, &dict_name);
    }
    
    pmenu_dictionary_parse(x, dict_name, m);
    //if atom is string, add it to the popup.
} else if(atomisstring(a)) {
    hashtab_store(x->item_hashtab, (t_symbol*)(long)x->id, (t_object*)atom_getobj(a));
    jpopupmenu_additem(m, x->id++, string_getptr((t_string *)atom_getobj(a)), NULL, 0, 0, NULL);
} //are numbers needed?
}



void pmenu_dictionary_parse(t_pmenu *x, t_symbol *s, t_jpopupmenu *menu)
{

t_dictionary *dict =  dictobj_findregistered_clone(s);

//check if dictionary has name and content keys
if(dictionary_hasentry(dict, ps_pmenu_name) && dictionary_hasentry(dict, ps_pmenu_contents)){
   //check if contents is atomarray. if not, ignore.
    if(dictionary_entryisatomarray(dict, ps_pmenu_contents)) {
        t_menu_info o;
        o.object = x;
        o.menu = jpopupmenu_create();
        o.dict_name = s;//don't need this now
        
        
        //get name value
        const char *p;
        dictionary_getstring(dict, ps_pmenu_name, &p);

        //get the atomarray in contents value
        t_object *ap;
        dictionary_getatomarray((t_dictionary*)dict, ps_pmenu_contents, &ap);
        
        atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
        
        jpopupmenu_setcolors(o.menu, x->textcolor,x->bgcolor,x->highlightedtextcolor,x->highlightedbgcolor);
        t_jfont *font = jfont_create(jbox_get_fontname((t_object *)x)->s_name,
                                    (t_jgraphics_font_slant)jbox_get_font_slant((t_object *)x),
                                     (t_jgraphics_font_weight)jbox_get_font_weight((t_object *)x),
                                     jbox_get_fontsize((t_object *)x));

        jpopupmenu_setfont(o.menu, font );
        jfont_destroy(font);
        jpopupmenu_addsubmenu(menu, p, o.menu, 0);
    }
    
//check if dictionary has name and data keys, if not ignore
} else if(dictionary_hasentry(dict, ps_pmenu_name) && dictionary_hasentry(dict, ps_pmenu_data)) {
    //make sure name entry is not a dictionary or a atom array
    if(!dictionary_entryisdictionary(dict, ps_pmenu_name) || !dictionary_entryisatomarray(dict, ps_pmenu_name)) {
        t_symbol *a;
        //get sym at name
        dictionary_getsym(dict, ps_pmenu_name, &a);
        hashtab_store(x->item_hashtab, (t_symbol*)(long)x->id, (t_object*)(string_new(a->s_name)));
        hashtab_store(x->data_hashtab, (t_symbol*)(long)x->id, (t_object*)dict);

        jpopupmenu_additem(menu, x->id++, a->s_name, NULL, 0, 0, NULL);
    }
}

}


//for loading dictionary saved with patcher.


//making the actual menu is unecesary in this method because it will be re-made when
//pmenu is clicked. doing it at this stage just to see if it catches any problems
// before attempting to display. maybe the parsing of the dict and making the menu
// should be separated but doen't seem to cause issue.
void pmenu_open_dictionary(t_pmenu *x, t_symbol *s)
{
t_dictionary *dict =  dictobj_findregistered_clone(s);
//check that top level of incoming dictionary has name and contents keys
if(!dictionary_hasentry(dict, ps_pmenu_name) || !dictionary_hasentry(dict, ps_pmenu_contents)) {
    object_error((t_object*)x, "dictionary does not contain both name and contents keys");
    
} else {
    //top level of dict needs to have name and contents keys
    //if there is a contents key it must store and array
    if(dictionary_hasentry(x->dict, ps_pmenu_name) && dictionary_hasentry(x->dict, ps_pmenu_contents)) {
        const char *title;
        dictionary_getstring(x->dict, ps_pmenu_name, &title);
        object_method(jbox_get_textfield((t_object *)x), _sym_settext, title);
        
        if(dictionary_entryisatomarray(dict, ps_pmenu_contents)) {
            jpopupmenu_clear(x->menu);
            hashtab_clear(x->item_hashtab);
            hashtab_clear(x->data_hashtab);
            
            t_symbol *dict_name;
            dict_name = dictobj_namefromptr((t_dictionary*)dict);
            if (!dict_name)
                dictobj_register(dict, &dict_name);
            x->id = 1;

            t_menu_info o;
            o.object = x;
            o.dict_name = dict_name;
            o.menu = x->menu;
            const char *p;
            dictionary_getstring(x->dict, ps_pmenu_name, &p);
            
            t_object *ap;
            dictionary_getatomarray((t_dictionary*)x->dict, ps_pmenu_contents, &ap);
            
            atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
            
            jbox_redraw((t_jbox *)x);
        }
        
    }
}
}

//for dealing with dictionary sent to inlet.

//making the actual menu is unecesary in this method because it will be re-made when
//pmenu is clicked. doing it at this stage just to see if it catches any problems
// before attempting to display. maybe the parsing of th

void pmenu_dictionary(t_pmenu *x, t_symbol *s)
{

//clone the incoming dictionary
t_dictionary *d =  dictobj_findregistered_clone(s);

//check that toplevel dictionary has name and contents key
if(!dictionary_hasentry(d, ps_pmenu_name) || !dictionary_hasentry(d, ps_pmenu_contents)) {
    //create error if dictionary does not have name and contents keys
    //
    object_error((t_object*)x, "dictionary %s does not contain both name and contents keys", s->s_name);
    
} else {
    
    dictionary_clear(x->dict);
    //clone into x->dict so that orignal clone not owned by object dictionary
    dictionary_clone_to_existing(d, x->dict);
    
    //top level of dict needs to have name and content keys
    //if there is a content key it must store and array
    if(dictionary_hasentry(x->dict, ps_pmenu_name) && dictionary_hasentry(x->dict, ps_pmenu_contents)) {
        const char *title;
        dictionary_getstring(x->dict, ps_pmenu_name, &title);
        object_method(jbox_get_textfield((t_object *)x), _sym_settext, title);
        //is contents key an attomarray
        if(dictionary_entryisatomarray(x->dict, ps_pmenu_contents)) {
            jpopupmenu_clear(x->menu);
            hashtab_clear(x->item_hashtab);
            hashtab_clear(x->data_hashtab);
            x->id = 1; //
            t_menu_info o;
            o.object = x;
            //o.dict = x->dict;
            o.menu = x->menu;
            const char *p;
            dictionary_getstring(x->dict, ps_pmenu_name, &p);
            
            t_object *ap;
            dictionary_getatomarray((t_dictionary*)x->dict, ps_pmenu_contents, &ap);
            
            atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
            
            jbox_redraw((t_jbox *)x);
        }
    }
}
}



void pmenu_rebuild_menu(t_pmenu *x)
{

if(dictionary_hasentry(x->dict, ps_pmenu_name) && dictionary_hasentry(x->dict, ps_pmenu_contents)) {
    //is contents key an attomarray
    if(dictionary_entryisatomarray(x->dict, ps_pmenu_contents)) {
        jpopupmenu_clear(x->menu);
        hashtab_clear(x->item_hashtab);
        hashtab_clear(x->data_hashtab);
        x->id = 1; //
        t_menu_info o;
        o.object = x;
        //o.dict = x->dict;
        o.menu = x->menu;
        const char *p;
        dictionary_getstring(x->dict, ps_pmenu_name, &p);
        
        t_object *ap;
        dictionary_getatomarray((t_dictionary*)x->dict, ps_pmenu_contents, &ap);
        
        atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
        
        jbox_redraw((t_jbox *)x);
    }
}

}



void pmenu_mousedown(t_pmenu *x,t_object *patcherview, t_pt pt, long modifiers)
{
t_rect rect;

jbox_get_rect_for_view((t_object *)x, patcherview, &rect);


if(x->dict) {
    
    jpopupmenu_clear(x->menu);
    pmenu_rebuild_menu(x);

}


jpopupmenu_setcolors(x->menu, x->textcolor,x->bgcolor,x->highlightedtextcolor,x->highlightedbgcolor);


t_jfont *font = jfont_create(jbox_get_fontname((t_object *)x)->s_name,
                             (t_jgraphics_font_slant)jbox_get_font_slant((t_object *)x),
                             (t_jgraphics_font_weight)jbox_get_font_weight((t_object *)x),
                             jbox_get_fontsize((t_object *)x));


jpopupmenu_setfont(x->menu, font );
jfont_destroy(font);


int item = jpopupmenu_popup_nearbox(x->menu, (t_object *)x, patcherview, (int)x->current_item);
if(item > 0) {
    pmenu_assign(x, item, true);
}
}

void pmenu_paint(t_pmenu *x, t_object *view)
{
t_rect rect;
t_jgraphics *g;

g = (t_jgraphics *) patcherview_get_jgraphics(view);
jbox_get_rect_for_view((t_object *)x, view, &rect);
jgraphics_rectangle(g, 0., 0., rect.width, rect.height);
jgraphics_set_source_jrgba(g, &x->bgcolor);
jgraphics_fill(g);


}


void pmenu_assist(t_pmenu *x, void *b, long m, long a, char *s)
{
if (m==ASSIST_INLET) {
    strcpy(s, "dictionary input");
}
else if (m==ASSIST_OUTLET) {
    switch (a) {
        case 0: strcpy(s, "selected item"); break;
        case 1: strcpy(s, "index associated with item"); break;
        case 2: strcpy(s, "data associated with item"); break;
    }
}
}

void pmenu_int(t_pmenu *x, long item) {

if(item > 0 ) {
    pmenu_assign(x, item, true);
}

}


void pmenu_jsave(t_pmenu *x, t_dictionary *d) {

t_dictionary* tmp = dictionary_new();
dictionary_clone_to_existing(x->dict, tmp);
dictionary_appenddictionary(d, ps_pmenu_dict, (t_object*)tmp);

}


t_max_err pmenu_setvalueof(t_pmenu *x, long ac, t_atom *av)
{
if (ac && av) {
    if (av->a_type == A_LONG) {
        pmenu_assign(x, (long)atom_getlong(av), false);
    }
}

return MAX_ERR_NONE;
}

t_max_err pmenu_getvalueof(t_pmenu *x, long *ac, t_atom **av)
{
t_atom a;

if (ac && av) {
    if (*ac && *av) {
        //memory passed in use it
    } else {
        *av = (t_atom *)getbytes(sizeof(t_atom));
    }
    *ac = 1;
    atom_setlong(&a,(long)x->current_item);
    **av = a;
}
return MAX_ERR_NONE;
}


void pmenu_assign(t_pmenu *x, long item, long notify)
{
if(item > 0) {
    
    if(x->dict) {
        t_object *o;
        
        long result = hashtab_lookup(x->item_hashtab, (t_symbol*)(long)item, &o);
        if(result == MAX_ERR_NONE) {
            object_method(jbox_get_textfield((t_object *)x), _sym_settext, string_getptr((t_string *)o));
            
            t_object *od;
                
            result = hashtab_lookup(x->data_hashtab, (t_symbol*)(long)item, &od);
            
            if (result == MAX_ERR_NONE) {
                
                long       ac = 0;
                t_atom     *av = NULL;
                t_max_err  err;
                err = dictionary_copyatoms((t_dictionary*)od, ps_pmenu_data, &ac, &av);
                if (!err && ac && av) {
                    dictobj_outlet_atoms(x->data_outlet,ac,av);
                }
                if (av)
                    sysmem_freeptr(av);
            }
            
            outlet_int(x->id_outlet, item);
            t_atom av[1];
            atom_setsym(av, gensym(string_getptr((t_string *)o)));
            if(!x->prefix || (x->prefix == _sym_nothing)) {
                outlet_anything(x->item_outlet, atom_getsym(av), 0, NULL );
            } else {
                outlet_anything(x->item_outlet, x->prefix, 1, av );
                
            }

            x->current_item = item;
            if (notify) {
                object_notify(x, _sym_modified, NULL);
            }
           
            jbox_redraw((t_jbox *)x);
        }
    }
}
}

void pmenu_preset(t_pmenu *x)
{
preset_int((t_object*)x, x->current_item);
}

t_max_err pmenu_notify(t_pmenu *x, t_symbol *s, t_symbol *msg, void *sender, void *data) {


return jbox_notify((t_jbox *)x, s, msg, sender, data);
}
