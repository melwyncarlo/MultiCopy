# ![MultiCopy Logo](https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy_UI_Files/MultiCopy.svg)<br>MultiCopy - a FreeCAD Macro

[![made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
[![License: AGPL v3](https://img.shields.io/github/license/melwyncarlo/MultiCopy)](https://github.com/melwyncarlo/AeroFoil/blob/main/LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/melwyncarlo/MultiCopy)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black) 
<br>![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/melwyncarlo/MultiCopy) 
[![Build Status](https://travis-ci.com/melwyncarlo/MultiCopy.svg?branch=main)](https://travis-ci.com/melwyncarlo/MultiCopy) 
![Codecov](https://img.shields.io/codecov/c/github/melwyncarlo/MultiCopy) 
<br> [![Total alerts](https://img.shields.io/lgtm/alerts/g/melwyncarlo/MultiCopy.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/melwyncarlo/MultiCopy/alerts/)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/melwyncarlo/MultiCopy.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/melwyncarlo/MultiCopy/context:python)

----

**'MultiCopy'** is a user-created macro to be used within the [FreeCAD](https://www.freecadweb.org/) application.
MultiCopy allows the duplication (copy and paste) of multiple FreeCAD objects that can be labelled sequentially and in a custom manner.

----


### <br>Key Features
* Two input methods: by mouse, or by keyboard (Paste Code Commands)
* Standard Copy and Simple Copy methods supported
* Duplication across two different documents
* Delete selected objects after duplication
* Duplicate with or without dependencies
* Add custom label separators
* Add padded numbering to labels
* Numbering types: Ordinary numerals, upper/lower-case roman numerals and upper/lower-case alphabetic characters
* Unique 'Paste Code Commands' that allow multiple duplication procedurally as well as in nested loops
* Both CUI and GUI methods available

### <br>Installation
In the [FreeCAD](https://www.freecadweb.org/) software, MultiCopy can be downloaded directly using the in-built [Addon Manager](https://wiki.freecadweb.org/Std_AddonMgr). You may need to download [GitPython](https://pypi.org/project/GitPython/) (read the relevant [documentation](https://gitpython.readthedocs.io/en/stable/intro.html)) to automatically download the associated folder (and its accompanying files); else, resort to manual download and extraction of the [MultiCopy.zip](https://github.com/melwyncarlo/MultiCopy/blob/main/MultiCopy.zip) file.
<br>MultiCopy can also be obtained directly from the [FreeCAD Macros Github Repository](https://github.com/FreeCAD/FreeCAD-macros/tree/master/ObjectCreation).

In Linux, MultiCopy can be installed manually, similar to Windows installation, or by using the command terminal and its relevant commands as mentioned in the [INSTALL](https://github.com/melwyncarlo/MultiCopy/blob/main/INSTALL.sh) file.

By default, the Linux command terminal can be launched by pressing the following keyboard keys simultaneously :
```
Control + Alt + T
```

In Windows, MultiCopy can be installed with the help of the following two steps :-
1. Download the [MultiCopy.zip](https://github.com/melwyncarlo/MultiCopy/blob/main/MultiCopy.zip) file.
2. Extract the ZIP file's contents into the FreeCAD User Macro directory location.

By default, the FreeCAD User Macro directory should be located at :
```
~/.FreeCAD/Macro
```

### <br>Usage - GUI Method

MultiCopy can be loaded by performing the following steps :-
1. Launch the `FreeCAD` application.
2. Click on the `Macro` menu from the Menu Bar.
3. Click on `Macros ...` from the Macro sub-menus.
4. Click on the `User macros` tab in the pop-up dialog box.
5. Select `MultiCopy.FCMacro`.
6. Click on the `Execute` button.

Before loading the MultiCopy macro, first select one or more objects from the active FreeCAD doccument, then load the macro. Next, follow the instructions in the dialog box, fill in the required inputs, and click on the 'Paste' button. In case of *error* or *warning*, you will automatically be notified of the same. In case you come across an *unexpected error*, communicate the error by mentioning the FreeCAD version, tracing the steps taken, and mentioning whether (and how much) or not any ouput was generated.

### <br>Usage - CUI (Python Console) Method

Before running the MultiCopy operation, first select one or more objects from the active FreeCAD doccument.

#### <br>To launch the GUI dialog:
```python
import MultiCopy

MultiCopy.Launch()
```

#### <br>To perform the terminal-based operation:

The MultiCopy command and its DocString are as follows :

```python
Run(paste_code, copy_type=True, delete_selection=False, paste_document_label=None)

"""Perform the MultiCopy operation by inputting the required arguments.

This is a public function, and can be used by the user to perform the 
MultiCopy operation directly from a terminal or the FreeCAD application's 
Python console. 

Parameters
----------
paste_code: (str)
  The paste code commands string.
  For indentations, use \'\\t\'.
  For line breaks, use \'\\n\'.
copy_type: (str) | (int) | (bool)
  [Optional]
  The copy operation mode.
  Values: 'Standard', 'Simple' | 
    1, 2 | True False
  Default: 'Standard' | 1 | True
delete_selection: (bool)
  [Optional]
  If true, the selected objects are deleted 
  after the MultiCopy operation.
  Default: False
paste_document_label: (str) | (FreeCAD.Document)
  [Optional]
  The name of the document to paste to, or 
  the document object itself.
  Default: FreeCAD.ActiveDocument

Return
----------
(None)
"""
```

##### <br>Example 1 :

To paste the selected objects to the currently active document as a standard copy, and to not delete the selections after the operation.
```python
import MultiCopy

some_paste_code_commands = 'from 1 to 2 :\n\t[1] = SomeName_{n#}'
MultiCopy.Run(some_paste_code_commands)
```

##### <br>Example 2 :

To paste the selected objects to a different document as a simple copy, and to delete the selections after the operation.
```python
import MultiCopy

some_paste_code_commands = 'from 1 to 2 :\n\t[1] = SomeName_{n#}'
MultiCopy.Run(some_paste_code_commands, True, True, SomeDocumentLabel)
```


### <br>Paste Code Commands

The two recurring **commands** in their generic form are as follows:
1. `from ... to ... :`
2. `[...] = ...`

While inputting the Paste Code Commands in the relevant input text box, there are three **signals** in the form of coloured strips located at the bottom of the text box:
1. **Black** denotes that the text box is focussed on, and that the user is currently entering the Paste Code Commands into it.
2. **Red** denotes that the text box is focussed out of, and that the user-entered commands are SYNTACTICALLY INCORRECT.
3. **Green** denotes that the text box is focussed out of, and that the user-entered commands are SYNTACTICALLY CORRECT.

#### Example 1 :
```
from 1 to 3 :
  [1] = {1}-Something_{n#}
```

The **1** and **3** values represent the duplication range where both the values are INCLUSIVE. The first (from) value must always be LESS THAN OR EQUAL TO the second (to) value. The values (together) can take the form of one of the five numbering types (**check 'Key Features'**).

`[1]` represents the **first object** from an assumed list of user-selected objects.
<br>`{1}` represents the **label name** of the first object.
<br>`{n#}` represents a **numbering label** of the type 'Ordinary Numerals'. (more on that, later)

**NOTE** that correct **tab indentations** are very crucial to the commands; they cannot be replaced with spaces.

Brackets are only used for commands of the second generic type. The square brackets **[** and **]** always lie on the left-hand side of the command; whereas, the curly brackets **{** and **}** always lie on the right-hand side of the command.

Let the first object's original label name be **Body**. Then, the above commands would output a set of duplicated objects (of the first object) each labelled as follows:
```
Body-Something_1
Body-Something_2
Body-Something_3
```

#### Object representation :

Let **i** be an arbitrary i-th object from an assumed list of user-selected objects.
<br>`[i]` represents the **i-th object** without dependencies (by default)
<br>`[i|0]` represents the **i-th object** without dependencies (another form)
<br>`[i|1]` represents the **i-th object** WITH dependencies included

#### Numbering labels :

`{n#}` or `{N#}` are of the type 'Ordinary Numerals'
<br>`{R#}` or `{ru#}` or `{RU#}` are of the type 'Upper-case Roman Numerals'
<br>`{r#}` or `{rl#}` or `{RL#}` are of the type 'Lower-case Roman Numerals'
<br>`{A#}` or `{au#}` or `{AU#}` are of the type 'Upper-case Alphabet'
<br>`{a#}` or `{al#}` or `{AL#}` are of the type 'Lower-case Alphabet'

A numbering label can have two additional options:
1. `{n#X}` Padding (of 'X' digits)
2. `{n#X|i1}` Nested loop level assignment (to a loop tagged as 'i1')

In case of a nested loop level assignment WITHOUT padding, do:
1. `{n#0|i1}` OR
2. `{n#|i1}`

#### Example 2 :

```
from 1 to 2 : i1 :
  from a to b : i2 :
    [1|1] = Pasted-{1}-{n#3|i1}-{AU#0|i2}
```

Here, the objects are pasted along with the dependencies. The 'Ordinary Numeral' label has a padding of '3', and the 'Upper-case Alphabet' label has a padding of '0'. 

**NOTICE** how the 'from-to' loop uses the lower-case alphabet; but the label will be outputted as upper-case.
<br>The above commands would output a set of duplicated objects (of the first object) each labelled as follows:
```
Pasted-Body-001-A
Pasted-Body-001-B
Pasted-Body-002-A
Pasted-Body-002-B
```


### <br>Notes :

|   |  |
| ------------- | ------------- |
| **(1)**  | There are a few inevitable *from-to* naming clashes between roman numerals and alphabetic characters.<br>**E.g.:** c, v, i, x, etc.  |
| **(2)**  | By design, roman numerals take precedence over alphabetic characters.  |
| **(3)**  | Dependencies only apply to 'Standard Copy'; its application on 'Simple Copy' will automatically be ignored.  |

For more information on the MultiCopy macro, refer to its [FreeCAD Macro Wiki Page](http://www.freecadweb.org/wiki/index.php?title=Macro_MultiCopy) or its discussion page on the [FreeCAD Forum](https://forum.freecadweb.org/viewtopic.php?f=22&t=56753).

### <br>License
MultiCopy is made available under the [GNU Lesser General Public License Version 2.1](https://github.com/melwyncarlo/AeroFoil/blob/main/LICENSE).
