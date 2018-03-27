# pmenu



### Description
Pop-up menu for Max/MSP/Jitter with hierarchical listings.

### Installation
This is setup in a package structure. Clone or unzip in your Max Package folder.



### Details
Displays a pop-up menu. Selections will be output the first outlet and optional data can be attached to each entry.

The object must be initialized with a dict. Once initialized the menu items are saved with the patch. The pmenu can also be copied and retains menu entries. The dictionary needs to have at the top level a name key which is a string and a contents key which points to an array. the array can hold strings, other dictionaries with name and content keys (for submenus). Entries in the menu can also be a dictionary with a name key and data key. The values in the data key are ouput the 3rd outlet when the menu item is selected.

Only mac version of object is currently in repo but if anyone wants to compile for Window that would be great. 


todd ingalls - testcase@asu.edu
