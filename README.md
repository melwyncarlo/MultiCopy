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

### <br>Usage
MultiCopy can be loaded by performing the following steps :-
1. Launch the `FreeCAD` application.
2. Click on the `Macro` menu from the Menu Bar.
3. Click on `Macros ...` from the Macro sub-menus.
4. Click on the `User macros` tab in the pop-up dialog box.
5. Select `MultiCopy.FCMacro`.
6. Click on the `Execute` button.

Before loading the MultiCopy macro, first select one or more objects from the active FreeCAD doccument, then load the macro. Next, follow the instructions in the dialog box, fill in the required inputs, and click on the 'Paste' button. In case of *error* or *warning*, you will automatically be notified of the same. In case you come across an *unexpected error*, communicate the error by mentioning the FreeCAD version, tracing the steps taken, and mentioning whether (and how much) or not any ouput was generated.


|   | **Notes** |
| ------------- | ------------- |
| **(1)**  | There are a few inevitable *from-to* naming clashes between roman numerals and alphabetic characters.<br>**E.g.:** c, v, i, x, etc.  |
| **(2)**  | By design, roman numerals take precedence over alphabetic characters.  |

For more information on the MultiCopy macro, refer to its [FreeCAD Macro Wiki Page](http://www.freecadweb.org/wiki/index.php?title=Macro_MultiCopy) or its discussion page on the [FreeCAD Forum](https://forum.freecadweb.org/viewtopic.php?f=22&t=56162).

### <br>Paste Code Commands

The two recurring commands in their generic form are as follows:
<br>1. `from ... to ... :`
<br>2. `[...] = ...`

As an example :
```
from 1 to 10 :
  [1] = {1}-Something_{n#}
```

### <br>License
MultiCopy is made available under the [GNU Lesser General Public License Version 2.1](https://github.com/melwyncarlo/AeroFoil/blob/main/LICENSE).
