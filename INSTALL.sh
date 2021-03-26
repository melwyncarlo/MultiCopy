#!/bin/sh

# For the command terminal, copy-paste FROM here

mkdir ~/.FreeCAD/Macro/MultiCopy
mkdir ~/.FreeCAD/Macro/MultiCopy/resources
wget --no-check-certificate -P ~/.FreeCAD/Macro https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy.FCMacro
wget --no-check-certificate -P ~/.FreeCAD/Macro https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy.svg
wget --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy/resources https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/resources/MultiCopy_Main_Dialog.ui
wget --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy/resources https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/resources/MultiCopy_Commands_Dialog.ui
wget --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy/resources https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/resources/MultiCopy.svg
wget --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/__init__.py
wget --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/MultiCopyAuxFunc.py
get --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/MultiCopyGui.py
get --no-check-certificate -P ~/.FreeCAD/Macro/MultiCopy https://raw.githubusercontent.com/melwyncarlo/MultiCopy/main/MultiCopy/MultiCopyCore.py

# For the command terminal, copy-paste TO here

