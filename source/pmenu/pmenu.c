/**
	@file
	pmenu

	@ingroup	examples
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


/**********************************************************************/
// Data Structures
typedef struct _pmenu {
	t_jbox				j_box;
    void*               pmenu_item_outlet;
    void*               pmenu_id_outlet;
    void*               pmenu_data_outlet;
	t_jrgba				j_textcolor;
	t_jrgba				j_bgcolor;
    t_jrgba             j_highlightedtextcolor;
    t_jrgba             j_highlightedbgcolor;
    t_jpopupmenu*       j_menu;
    t_hashtab*          item_hashtab;
    t_hashtab*          data_hashtab;

    int                 id;
    long                current_item;
    t_dictionary        *dict;
    
} t_pmenu;


typedef struct _menu_info {
    t_pmenu *object;
    t_dictionary*   dict;
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
void pmenu_dictionary_parse(t_pmenu *x, t_dictionary *dict, t_jpopupmenu *menu);
t_max_err pmenu_notify(t_pmenu *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void pmenu_jsave(t_pmenu *x, t_dictionary *d);
void pmenu_int(t_pmenu *x, long n);
void pmenu_open_dictionary(t_pmenu *x, t_dictionary *d);
t_max_err pmenu_setvalueof(t_pmenu *x, long ac, t_atom *av);
t_max_err pmenu_getvalueof(t_pmenu *x, long *ac, t_atom **av);
void pmenu_preset(t_pmenu *x);
void pmenu_assign(t_pmenu *x, long item, long notify);

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

	c = class_new("pmenu",(method)pmenu_new,(method)pmenu_free,sizeof(t_pmenu),(method)NULL,A_GIMME,0L);

	c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
	jbox_initclass(c,
                   JBOX_TEXTFIELD
                   | JBOX_FONTATTR
                   | JBOX_FIXWIDTH);

	class_addmethod(c, (method)pmenu_paint,         "paint",		A_CANT, 0);
    class_addmethod(c, (method)pmenu_mousedown,		"mousedown",	A_CANT, 0);
    class_addmethod(c, (method)pmenu_dictionary, 	"dictionary", 	A_SYM, 0);
    class_addmethod(c, (method)pmenu_assist,		"assist",		A_CANT, 0);
	class_addmethod(c, (method)pmenu_notify,			"notify",		A_CANT, 0);
    class_addmethod(c, (method)pmenu_int, "int", A_LONG, 0);
    class_addmethod(c, (method)pmenu_jsave,		"jsave",		A_CANT, 0);
    class_addmethod(c, (method)pmenu_getvalueof, "getvalueof", A_CANT, 0);
    class_addmethod(c, (method)pmenu_setvalueof, "setvalueof", A_CANT, 0);
    class_addmethod(c, (method)pmenu_preset, "preset", 0);


    CLASS_ATTR_STYLE_RGBA_PREVIEW(c, "highlightedbgcolor", 0, t_pmenu, j_highlightedbgcolor, "Highlighted Background Color", "rect_fill");
    CLASS_ATTR_BASIC(c, "highlightedbgcolor", 0);
    CLASS_ATTR_CATEGORY(c,		"highlightedbgcolor", 0, "Color");
    CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "highlightedbgcolor", 0, ".3764705882 0.3843137255 .4 1.");

    CLASS_ATTR_STYLE_RGBA_PREVIEW(c, "highlightedtext", 0, t_pmenu, j_highlightedtextcolor, "Highlighted Text Color", "rect_fill");
    CLASS_ATTR_BASIC(c, "highlightedtext", 0);
    CLASS_ATTR_CATEGORY(c,		"highlightedtext", 0, "Color");
    CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "highlightedtext", 0, "1. 1. 1. 1.");
    
    CLASS_ATTR_STYLE_RGBA_PREVIEW(c,"bgfillcolor",0,t_pmenu,j_bgcolor,"Background Color","rect_fill");
    CLASS_ATTR_BASIC(c, "bgfillcolor", 0);
    CLASS_ATTR_CATEGORY(c,		"bgfillcolor", 0, "Color");
    CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "bgfillcolor", 0, ".4 .4 .4 1.");
    
    CLASS_ATTR_RGBA(c, "textcolor", 0, t_pmenu, j_textcolor);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "textcolor", 0, "1. 1. 1. 1.");
    CLASS_ATTR_STYLE_LABEL(c, "textcolor", 0, "rgba", "Text Color");
    CLASS_ATTR_CATEGORY(c, "textcolor", 0, "Color");
    

    
	CLASS_ATTR_DEFAULT(c, "rect", 0, "0. 0. 100. 22.");

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
		long		flags;
        t_object	*textfield;
		//t_symbol	*s = NULL;

		flags = 0
				| JBOX_DRAWFIRSTIN
				| JBOX_NODRAWBOX
				| JBOX_DRAWINLAST
                | JBOX_DRAWBACKGROUND
                | JBOX_GROWY
				| JBOX_TEXTFIELD
				;

		jbox_new(&x->j_box, flags, argc, argv);
		x->j_box.b_firstin = (t_object *) x;
        
        x->pmenu_data_outlet = outlet_new(x, NULL);
        x->pmenu_id_outlet = outlet_new(x, NULL);
        x->pmenu_item_outlet = outlet_new(x, NULL);
        
        x->j_menu = jpopupmenu_create();
        textfield = jbox_get_textfield((t_object *) x);
        
        x->current_item = 1;
        if (textfield) {
            textfield_set_editonclick(textfield, 0);			// set it to 0 if you don't want user to edit it in lock mode
            textfield_get_textcolor(textfield, &x->j_textcolor );
            textfield_set_bgcolor(textfield,&x->j_bgcolor);
        }
        
        char *buff = " ";
        object_method(jbox_get_textfield((t_object *)x), gensym("settext"), buff);

        textfield_set_useellipsis(jbox_get_textfield((t_object *)x),JGRAPHICS_TEXTLAYOUT_USEELLIPSIS);
        textfield_set_wordwrap(jbox_get_textfield((t_object *)x),JGRAPHICS_TEXTLAYOUT_NOWRAP );
        
        jbox_processlegacydefaults((t_jbox *)x, d, 0);
        attr_dictionary_process(x, d);

        x->item_hashtab = (t_hashtab *)hashtab_new(0);
        x->data_hashtab = (t_hashtab *)hashtab_new(0);
        
        t_object *s;
        dictionary_getdictionary(d, gensym("my_string"), &s);

        if (s) {
            pmenu_open_dictionary(x, (t_dictionary*)s);

        }
		jbox_ready((t_jbox *)x);
        
	}
	return x;
}

void pmenu_free(t_pmenu *x)
{
    jpopupmenu_destroy(x->j_menu);
    hashtab_clear(x->item_hashtab);
    hashtab_clear(x->data_hashtab);
	jbox_free((t_jbox *)x);
//    object_free(x->dict);
}

void pmenu_attomarray_traverse(t_atom *a, void *obj)
{
    
    t_pmenu *x = ((t_menu_info*)obj)->object;
    t_jpopupmenu *m = ((t_menu_info*)obj)->menu;

    if(atomisdictionary(a)) {
        t_menu_info o;
        o.object = x;
        t_dictionary *dict = (t_dictionary*)atom_getobj(a);
        o.menu = m;
        pmenu_dictionary_parse(x, dict, m);
    } else if(atomisatomarray(a)) {
        ;//do nothing
        
    } else if(atomisstring(a)) {
        hashtab_store(x->item_hashtab, (t_symbol*)(long)x->id, atom_getobj(a));
        jpopupmenu_additem(m, x->id++, string_getptr((t_string *)atom_getobj(a)), NULL, 0, 0, NULL);

    } else {
        switch (atom_gettype(a)) {
            case A_LONG:
                cpost("long %ld", atom_getlong(a));
                break;
            case A_FLOAT:
                cpost("float %f", atom_getfloat(a));
                break;
            case A_SYM:
                cpost("symbol %s", atom_getsym(a)->s_name);
                break;
            case A_OBJ:
                cpost("an object %x", atom_getobj(a));
            default:
                cpost("%ld: unknown atom type (%ld)",atom_gettype(a));
                break;
        }
    }
}



void pmenu_dictionary_parse(t_pmenu *x, t_dictionary *dict, t_jpopupmenu *menu)
{
   
    if(dictionary_hasentry(dict, gensym("name")) && dictionary_hasentry(dict, gensym("contents"))){

        if(dictionary_entryisatomarray(dict, gensym("contents"))) {
            
            t_menu_info o;
            o.object = x;
            o.menu = jpopupmenu_create();
            const char *p;
            dictionary_getstring(dict, gensym("name"), &p);

            t_object *ap;
            dictionary_getatomarray((t_dictionary*)dict, gensym("contents"), &ap);
            atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
                        jpopupmenu_setcolors(o.menu, x->j_textcolor,x->j_bgcolor,x->j_highlightedtextcolor,x->j_highlightedbgcolor);
            t_jfont *font = jfont_create(jbox_get_fontname((t_object *)x)->s_name, (t_jgraphics_font_slant)jbox_get_font_slant((t_object *)x), (t_jgraphics_font_weight)jbox_get_font_weight((t_object *)x), jbox_get_fontsize((t_object *)x));

            jpopupmenu_setfont(o.menu, font );
            jfont_destroy(font);
            jpopupmenu_addsubmenu(menu, p, o.menu, 0);
        }
    } else if(dictionary_hasentry(dict, gensym("name")) && dictionary_hasentry(dict, gensym("data"))) {
        if(!dictionary_entryisdictionary(dict, gensym("name")) || !dictionary_entryisatomarray(dict, gensym("name"))) {
            t_symbol *a;
            dictionary_getsym(dict, gensym("name"), &a);
            hashtab_store(x->item_hashtab, (t_symbol*)(long)x->id, (t_object*)(string_new(a->s_name)));
            hashtab_store(x->data_hashtab, (t_symbol*)(long)x->id, (t_object*)dict);

            jpopupmenu_additem(menu, x->id++, a->s_name, NULL, 0, 0, NULL);

            
        }
    }
    
}

void pmenu_open_dictionary(t_pmenu *x, t_dictionary *d)
{
    x->dict = dictionary_clone(d);
    
    //top level of dict needs to have name and content keys
    //if there is a content key it must store and array
    if(dictionary_hasentry(x->dict, gensym("name")) && dictionary_hasentry(x->dict, gensym("contents"))) {
        
        if(dictionary_entryisatomarray(x->dict, gensym("contents"))) {
            jpopupmenu_clear(x->j_menu);
            hashtab_clear(x->item_hashtab);
            x->id = 1; //
            t_menu_info o;
            o.object = x;
            o.dict = x->dict;
            o.menu = x->j_menu;
            const char *p;
            dictionary_getstring(x->dict, gensym("name"), &p);
            
            t_object *ap;
            dictionary_getatomarray((t_dictionary*)x->dict, gensym("contents"), &ap);
            
            atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
            
            object_method(jbox_get_textfield((t_object *)x), gensym("settext"), p);
            
            jbox_redraw((t_jbox *)x);
        }
        
    } else {
        ;//do nothing
    }
}

void pmenu_dictionary(t_pmenu *x, t_symbol *s)
{
    x->dict = dictobj_findregistered_clone(s);
    
    //top level of dict needs to have name and content keys
    //if there is a content key it must store and array
    if(dictionary_hasentry(x->dict, gensym("name")) && dictionary_hasentry(x->dict, gensym("contents"))) {

        if(dictionary_entryisatomarray(x->dict, gensym("contents"))) {
            jpopupmenu_clear(x->j_menu);
            hashtab_clear(x->item_hashtab);
            x->id = 1; //
            t_menu_info o;
            o.object = x;
            o.dict = x->dict;
            o.menu = x->j_menu;
            const char *p;
            dictionary_getstring(x->dict, gensym("name"), &p);

            t_object *ap;
            dictionary_getatomarray((t_dictionary*)x->dict, gensym("contents"), &ap);

            atomarray_funall((t_atomarray*)ap,(method)pmenu_attomarray_traverse, (void*)&o);
            
            object_method(jbox_get_textfield((t_object *)x), gensym("settext"), p);

            jbox_redraw((t_jbox *)x);
        }
        
    } else {
        ;//do nothing
    }
}


void pmenu_mousedown(t_pmenu *x,t_object *patcherview, t_pt pt, long modifiers)
{
    t_rect rect;
    
    jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
    
    jpopupmenu_setcolors(x->j_menu, x->j_textcolor,x->j_bgcolor,x->j_highlightedtextcolor,x->j_highlightedbgcolor);

    
    t_jfont *font = jfont_create(jbox_get_fontname((t_object *)x)->s_name, (t_jgraphics_font_slant)jbox_get_font_slant((t_object *)x), (t_jgraphics_font_weight)jbox_get_font_weight((t_object *)x), jbox_get_fontsize((t_object *)x));

    
    jpopupmenu_setfont(x->j_menu, font );
    jfont_destroy(font);
    int item = jpopupmenu_popup_nearbox(x->j_menu, (t_object *)x, patcherview, (int)x->current_item);
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
    jgraphics_set_source_jrgba(g, &x->j_bgcolor);
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
t_max_err dictionary_appenddictionary(t_dictionary *d, t_symbol *key, t_object *value);

void pmenu_jsave(t_pmenu *x, t_dictionary *d) {
    
    dictionary_appenddictionary(d, gensym("my_string"), (t_object*)x->dict);

    
}


t_max_err pmenu_setvalueof(t_pmenu *x, long ac, t_atom *av)
{
    if (ac && av) {
        if (av->a_type == A_LONG) {
            pmenu_assign(x, (long)atom_getlong(av), false);
        }
    }
    cpost("pmenu_setvalueof %ld",  atom_getlong(av));
    return MAX_ERR_NONE;
}
//
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
    cpost("pmenu_getvalueof %ld", (long)x->current_item);
    
    return MAX_ERR_NONE;
}


void pmenu_assign(t_pmenu *x, long item, long notify)
{
    if(item > 0) {
        t_object *o;
        hashtab_lookup(x->item_hashtab, (t_symbol*)(long)item, &o);
        object_method(jbox_get_textfield((t_object *)x), gensym("settext"), string_getptr((t_string *)o));
        
        t_object *od;
        
        long result = hashtab_lookup(x->data_hashtab, (t_symbol*)(long)item, &od);
        
        if (!result) {
            
            long       ac = 0;
            t_atom     *av = NULL;
            t_max_err  err;
            err = dictionary_copyatoms((t_dictionary*)od, gensym("data"), &ac, &av);
            if (!err && ac && av) {
                dictobj_outlet_atoms(x->pmenu_data_outlet,ac,av);
            }
            if (av)
                sysmem_freeptr(av);
        }
        
        outlet_int(x->pmenu_id_outlet, item);
        outlet_anything(x->pmenu_item_outlet, gensym(string_getptr((t_string *)o)), 0, NULL);
        x->current_item = item;
        if (notify) {
            object_notify(x, _sym_modified, NULL);
        }
       
        jbox_redraw((t_jbox *)x);
    }
}


void pmenu_preset(t_pmenu *x)
{
    preset_int((t_object*)x, x->current_item);
}


t_max_err pmenu_notify(t_pmenu *x, t_symbol *s, t_symbol *msg, void *sender, void *data) {

   // cpost("notif %s", msg->s_name);
    //jbox_redraw((t_jbox *)x);
    return jbox_notify((t_jbox *)x, s, msg, sender, data);
}
