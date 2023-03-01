---@diagnostic disable-next-line
local completion = {
    -- {
        -- label = "{ ... } (Block)",
        -- documentation = [[Blocks are one or more statements enclosed]]..
                        -- [[ in braces. Typically used with function definitions and]]..
                        -- [[ control flow statements.]]
    -- },
    -- {
        -- label = "{ ... } / Object",
        -- documentation = [[Creates an Object from a list of property]]..
                        -- [[ name and value pairs.]]
    -- },
    -- {
        -- label = "[ ... ] / Array",
        -- documentation = [[Creates an Array from a sequence of parameter]]..
                        -- [[ values.]]
    -- },
    {
        label = "Abs",
        documentation = [[Returns the absolute value of the specified]]..
                        [[ number.]]
    },
    {
        label = "ASin",
        documentation = [[Returns the arcsine (the number whose sine]]..
                        [[ is the specified number) in radians.]]
    },
    {
        label = "ACos",
        documentation = [[Returns the arccosine (the number whose cosine]]..
                        [[ is the specified number) in radians.]]
    },
    {
        label = "ATan",
        documentation = [[Returns the arctangent (the number whose]]..
                        [[ tangent is the specified number) in radians.]]
    },
    {
        label = "BlockInput",
        documentation = [[Disables or enables the user's ability to]]..
                        [[ interact with the computer via keyboard and mouse.]]
    },
    {
        label = "Break",
        documentation = [[Exits (terminates) any type of loop statement.]]
    },
    {
        label = "Buffer",
        documentation = [[Creates a Buffer, which encapsulates a block]]..
                        [[ of memory for use with other functions.]]
    },
    {
        label = "CallbackCreate",
        documentation = [[Creates a machine-code address that when]]..
                        [[ called, redirects the call to a function in the script.]]
    },
    {
        label = "CallbackFree",
        documentation = [[Frees a callback created by CallbackCreate.]]
    },
    {
        label = "CaretGetPos",
        documentation = [[Retrieves the current position of the caret]]..
                        [[ (text insertion point).]]
    },
    {
        label = "Catch",
        documentation = [[Specifies the code to execute if a value]]..
                        [[ or error is thrown during execution of a try statement.]]
    },
    {
        label = "Ceil",
        documentation = [[Returns the specified number rounded up to]]..
                        [[ the nearest integer (without any .00 suffix).]]
    },
    {
        label = "Chr",
        documentation = [[Returns the string (usually a single character)]]..
                        [[ corresponding to the character code indicated by the specified]]..
                        [[ number.]]
    },
    {
        label = "Click",
        documentation = [[Clicks a mouse button at the specified coordinates.]]..
                        [[ It can also hold down a mouse button, turn the mouse wheel]]..
                        [[, or move the mouse.]]
    },
    {
        label = "ClipboardAll",
        documentation = [[Creates an object containing everything on]]..
                        [[ the clipboard (such as pictures and formatting).]]
    },
    {
        label = "ClipWait",
        documentation = [[Waits until the clipboard contains data.]]
    },
    {
        label = "ComCall",
        documentation = [[Calls a native COM interface method by index.]]
    },
    {
        label = "ComObjActive",
        documentation = [[Retrieves a registered COM object.]]
    },
    {
        label = "ComObjArray",
        documentation = [[Creates a SafeArray for use with COM.]]
    },
    {
        label = "ComObjConnect",
        documentation = [[Connects a COM object's event source to the]]..
                        [[ script, enabling events to be handled.]]
    },
    {
        label = "ComObject",
        documentation = [[Creates a COM object.]]
    },
    {
        label = "ComObjFlags",
        documentation = [[Retrieves or changes flags which control]]..
                        [[ a COM wrapper object's behaviour.]]
    },
    {
        label = "ComObjFromPtr",
        documentation = [[Wraps a raw IDispatch pointer (COM object)]]..
                        [[ for use by the script.]]
    },
    {
        label = "ComObjGet",
        documentation = [[Returns a reference to an object provided]]..
                        [[ by a COM component.]]
    },
    {
        label = "ComObjQuery",
        documentation = [[Queries a COM object for an interface or]]..
                        [[ service.]]
    },
    {
        label = "ComObjType",
        documentation = [[Retrieves type information from a COM object.]]
    },
    {
        label = "ComObjValue",
        documentation = [[Retrieves the value or pointer stored in]]..
                        [[ a COM wrapper object.]]
    },
    {
        label = "ComValue",
        documentation = [[Wraps a value, SafeArray or COM object for]]..
                        [[ use by the script or for passing to a COM method.]]
    },
    {
        label = "Continue",
        documentation = [[Skips the rest of a loop statement's current]]..
                        [[ iteration and begins a new one.]]
    },
    {
        label = "ControlAddItem",
        documentation = [[Adds the specified string as a new entry]]..
                        [[ at the bottom of a ListBox or ComboBox.]]
    },
    {
        label = "ControlChooseIndex",
        documentation = [[Sets the selection in a ListBox, ComboBox]]..
                        [[ or Tab control to be the specified entry or tab number.]]
    },
    {
        label = "ControlChooseString",
        documentation = [[Sets the selection in a ListBox or ComboBox]]..
                        [[ to be the first entry whose leading part matches the specified]]..
                        [[ string.]]
    },
    {
        label = "ControlClick",
        documentation = [[Sends a mouse button or mouse wheel event]]..
                        [[ to a control.]]
    },
    {
        label = "ControlDeleteItem",
        documentation = [[Deletes the specified entry number from a]]..
                        [[ ListBox or ComboBox.]]
    },
    {
        label = "ControlFindItem",
        documentation = [[Returns the entry number of a ListBox or]]..
                        [[ ComboBox that is a complete match for the specified string.]]
    },
    {
        label = "ControlFocus",
        documentation = [[Sets input focus to a given control on a]]..
                        [[ window.]]
    },
    {
        label = "ControlGetChecked",
        documentation = [[Returns a non-zero value if the checkbox]]..
                        [[ or radio button is checked.]]
    },
    {
        label = "ControlGetChoice",
        documentation = [[Returns the name of the currently selected]]..
                        [[ entry in a ListBox or ComboBox.]]
    },
    {
        label = "ControlGetClassNN",
        documentation = [[Returns the ClassNN (class name and sequence]]..
                        [[ number) of the specified control.]]
    },
    {
        label = "ControlGetEnabled",
        documentation = [[Returns a non-zero value if the specified]]..
                        [[ control is enabled.]]
    },
    {
        label = "ControlGetFocus",
        documentation = [[Retrieves which control of the target window]]..
                        [[ has keyboard focus, if any.]]
    },
    {
        label = "ControlGetHwnd",
        documentation = [[Returns the unique ID number of the specified]]..
                        [[ control.]]
    },
    {
        label = "ControlGetIndex",
        documentation = [[Returns the index of the currently selected]]..
                        [[ entry or tab in a ListBox, ComboBox or Tab control.]]
    },
    {
        label = "ControlGetItems",
        documentation = [[Returns an array of items/rows from a ListBox]]..
                        [[, ComboBox, or DropDownList.]]
    },
    {
        label = "ControlGetPos",
        documentation = [[Retrieves the position and size of a control.]]
    },
    {
        label = "ControlGetStyle",
        documentation = [[Returns an integer representing the style]]..
                        [[ or extended style of the specified control.]]
    },
    {
        label = "ControlGetExStyle",
        documentation = [[Returns an integer representing the style]]..
                        [[ or extended style of the specified control.]]
    },
    {
        label = "ControlGetText",
        documentation = [[Retrieves text from a control.]]
    },
    {
        label = "ControlGetVisible",
        documentation = [[Returns a non-zero value if the specified]]..
                        [[ control is visible.]]
    },
    {
        label = "ControlHide",
        documentation = [[Hides the specified control.]]
    },
    {
        label = "ControlHideDropDown",
        documentation = [[Hides the drop-down list of a ComboBox control.]]
    },
    {
        label = "ControlMove",
        documentation = [[Moves or resizes a control.]]
    },
    {
        label = "ControlSend",
        documentation = [[Sends simulated keystrokes or text to a window]]..
                        [[ or control.]]
    },
    {
        label = "ControlSendText",
        documentation = [[Sends simulated keystrokes or text to a window]]..
                        [[ or control.]]
    },
    {
        label = "ControlSetChecked",
        documentation = [[Turns on (checks) or turns off (unchecks)]]..
                        [[ a checkbox or radio button.]]
    },
    {
        label = "ControlSetEnabled",
        documentation = [[Enables or disables the specified control.]]
    },
    {
        label = "ControlSetStyle",
        documentation = [[Changes the style or extended style of the]]..
                        [[ specified control, respectively.]]
    },
    {
        label = "ControlSetExStyle",
        documentation = [[Changes the style or extended style of the]]..
                        [[ specified control, respectively.]]
    },
    {
        label = "ControlSetText",
        documentation = [[Changes the text of a control.]]
    },
    {
        label = "ControlShow",
        documentation = [[Shows the specified control if it was previously]]..
                        [[ hidden.]]
    },
    {
        label = "ControlShowDropDown",
        documentation = [[Shows the drop-down list of a ComboBox control.]]
    },
    {
        label = "CoordMode",
        documentation = [[Sets coordinate mode for various built-in]]..
                        [[ functions to be relative to either the active window or]]..
                        [[ the screen.]]
    },
    {
        label = "Cos",
        documentation = [[Returns the trigonometric cosine of the specified]]..
                        [[ number.]]
    },
    {
        label = "Critical",
        documentation = [[Prevents the current thread from being interrupted]]..
                        [[ by other threads, or enables it to be interrupted.]]
    },
    {
        label = "DateAdd",
        documentation = [[Adds or subtracts time from a date-time value.]]
    },
    {
        label = "DateDiff",
        documentation = [[Compares two date-time values and returns]]..
                        [[ the difference.]]
    },
    {
        label = "DetectHiddenText",
        documentation = [[Determines whether invisible text in a window]]..
                        [[ is "seen" for the purpose of finding the window. This affects]]..
                        [[ built-in functions such as WinExist and WinActivate.]]
    },
    {
        label = "DetectHiddenWindows",
        documentation = [[Determines whether invisible windows are]]..
                        [[ "seen" by the script.]]
    },
    {
        label = "DirCopy",
        documentation = [[Copies a folder along with all its sub-folders]]..
                        [[ and files (similar to xcopy).]]
    },
    {
        label = "DirCreate",
        documentation = [[Creates a folder.]]
    },
    {
        label = "DirDelete",
        documentation = [[Deletes a folder.]]
    },
    {
        label = "DirExist",
        documentation = [[Checks for the existence of a folder and]]..
                        [[ returns its attributes.]]
    },
    {
        label = "DirMove",
        documentation = [[Moves a folder along with all its sub-folders]]..
                        [[ and files. It can also rename a folder.]]
    },
    {
        label = "DirSelect",
        documentation = [[Displays a standard dialog that allows the]]..
                        [[ user to select a folder.]]
    },
    {
        label = "DllCall",
        documentation = [[Calls a function inside a DLL, such as a]]..
                        [[ standard Windows API function.]]
    },
    {
        label = "Download",
        documentation = [[Downloads a file from the Internet.]]
    },
    {
        label = "DriveEject",
        documentation = [[Ejects the tray of the specified CD/DVD drive]]..
                        [[, or ejects a removable drive.]]
    },
    {
        label = "DriveGetCapacity",
        documentation = [[Returns the total capacity of the drive which]]..
                        [[ contains the specified path, in megabytes.]]
    },
    {
        label = "DriveGetFileSystem",
        documentation = [[Returns the type of the specified drive's]]..
                        [[ file system.]]
    },
    {
        label = "DriveGetLabel",
        documentation = [[Returns the volume label of the specified]]..
                        [[ drive.]]
    },
    {
        label = "DriveGetList",
        documentation = [[Returns a string of letters, one character]]..
                        [[ for each drive letter in the system.]]
    },
    {
        label = "DriveGetSerial",
        documentation = [[Returns the volume serial number of the specified]]..
                        [[ drive.]]
    },
    {
        label = "DriveGetSpaceFree",
        documentation = [[Returns the free disk space of the drive]]..
                        [[ which contains the specified path, in megabytes.]]
    },
    {
        label = "DriveGetStatus",
        documentation = [[Returns the status of the drive which contains]]..
                        [[ the specified path.]]
    },
    {
        label = "DriveGetStatusCD",
        documentation = [[Returns the media status of the specified]]..
                        [[ CD/DVD drive.]]
    },
    {
        label = "DriveGetType",
        documentation = [[Returns the type of the drive which contains]]..
                        [[ the specified path.]]
    },
    {
        label = "DriveLock",
        documentation = [[Prevents the eject feature of the specified]]..
                        [[ drive from working.]]
    },
    {
        label = "DriveRetract",
        documentation = [[Retracts the tray of the specified CD/DVD]]..
                        [[ drive.]]
    },
    {
        label = "DriveSetLabel",
        documentation = [[Changes the volume label of the specified]]..
                        [[ drive.]]
    },
    {
        label = "DriveUnlock",
        documentation = [[Restores the eject feature of the specified]]..
                        [[ drive.]]
    },
    {
        label = "Edit",
        documentation = [[Opens the current script for editing in the]]..
                        [[ associated editor.]]
    },
    {
        label = "EditGetCurrentCol",
        documentation = [[Returns the column number in an Edit control]]..
                        [[ where the caret (text insertion point) resides.]]
    },
    {
        label = "EditGetCurrentLine",
        documentation = [[Returns the line number in an Edit control]]..
                        [[ where the caret (text insert point) resides.]]
    },
    {
        label = "EditGetLine",
        documentation = [[Returns the text of the specified line in]]..
                        [[ an Edit control.]]
    },
    {
        label = "EditGetLineCount",
        documentation = [[Returns the number of lines in an Edit control.]]
    },
    {
        label = "EditGetSelectedText",
        documentation = [[Returns the selected text in an Edit control.]]
    },
    {
        label = "EditPaste",
        documentation = [[Pastes the specified string at the caret]]..
                        [[ (text insertion point) in an Edit control.]]
    },
    {
        label = "Else",
        documentation = [[Specifies one or more statements to execute]]..
                        [[ if the associated statement's body did not execute.]]
    },
    {
        label = "EnvGet",
        documentation = [[Retrieves an environment variable.]]
    },
    {
        label = "EnvSet",
        documentation = [[Writes a value to a variable contained in]]..
                        [[ the environment.]]
    },
    {
        label = "Exit",
        documentation = [[Exits the current thread.]]
    },
    {
        label = "ExitApp",
        documentation = [[Terminates the script.]]
    },
    {
        label = "Exp",
        documentation = [[Returns e (which is approximately 2.71828182845905)]]..
                        [[ raised to the Nth power.]]
    },
    {
        label = "FileAppend",
        documentation = [[Writes text or binary data to the end of]]..
                        [[ a file (first creating the file, if necessary).]]
    },
    {
        label = "FileCopy",
        documentation = [[Copies one or more files.]]
    },
    {
        label = "FileCreateShortcut",
        documentation = [[Creates a shortcut (.lnk) file.]]
    },
    {
        label = "FileDelete",
        documentation = [[Deletes one or more files.]]
    },
    {
        label = "FileEncoding",
        documentation = [[Sets the default encoding for FileRead, Loop]]..
                        [[ Read, FileAppend, and FileOpen.]]
    },
    {
        label = "FileExist",
        documentation = [[Checks for the existence of a file or folder]]..
                        [[ and returns its attributes.]]
    },
    {
        label = "FileInstall",
        documentation = [[Includes the specified file inside the compiled]]..
                        [[ version of the script.]]
    },
    {
        label = "FileGetAttrib",
        documentation = [[Reports whether a file or folder is read]]..
                        [[-only, hidden, etc.]]
    },
    {
        label = "FileGetShortcut",
        documentation = [[Retrieves information about a shortcut (]]..
                        [[.lnk) file, such as its target file.]]
    },
    {
        label = "FileGetSize",
        documentation = [[Retrieves the size of a file.]]
    },
    {
        label = "FileGetTime",
        documentation = [[Retrieves the datetime stamp of a file or]]..
                        [[ folder.]]
    },
    {
        label = "FileGetVersion",
        documentation = [[Retrieves the version of a file.]]
    },
    {
        label = "FileMove",
        documentation = [[Moves or renames one or more files.]]
    },
    {
        label = "FileOpen",
        documentation = [[Opens a file to read specific content from]]..
                        [[ it and/or to write new content into it.]]
    },
    {
        label = "FileRead",
        documentation = [[Retrieves the contents of a file.]]
    },
    {
        label = "FileRecycle",
        documentation = [[Sends a file or directory to the recycle]]..
                        [[ bin if possible, or permanently deletes it.]]
    },
    {
        label = "FileRecycleEmpty",
        documentation = [[Empties the recycle bin.]]
    },
    {
        label = "FileSelect",
        documentation = [[Displays a standard dialog that allows the]]..
                        [[ user to open or save file(s).]]
    },
    {
        label = "FileSetAttrib",
        documentation = [[Changes the attributes of one or more files]]..
                        [[ or folders. Wildcards are supported.]]
    },
    {
        label = "FileSetTime",
        documentation = [[Changes the datetime stamp of one or more]]..
                        [[ files or folders. Wildcards are supported.]]
    },
    {
        label = "Finally",
        documentation = [[Ensures that one or more statements are always]]..
                        [[ executed after a Try statement finishes.]]
    },
    {
        label = "Float",
        documentation = [[Converts a numeric string or integer value]]..
                        [[ to a floating-point number.]]
    },
    {
        label = "Floor",
        documentation = [[Returns the specified number rounded down]]..
                        [[ to the nearest integer (without any .00 suffix).]]
    },
    {
        label = "For",
        documentation = [[Repeats a series of functions once for each]]..
                        [[ key-value pair in an object.]]
    },
    {
        label = "Format",
        documentation = [[Formats a variable number of input values]]..
                        [[ according to a format string.]]
    },
    {
        label = "FormatTime",
        documentation = [[Transforms a YYYYMMDDHH24MISS timestamp into]]..
                        [[ the specified date/time format.]]
    },
    {
        label = "GetKeyName",
        documentation = [[Retrieves the name or text of a key.]]
    },
    {
        label = "GetKeyVK",
        documentation = [[Retrieves the virtual key code of a key.]]
    },
    {
        label = "GetKeySC",
        documentation = [[Retrieves the scan code of a key.]]
    },
    {
        label = "GetKeyState",
        documentation = [[Checks if a keyboard key or mouse/joystick]]..
                        [[ button is down or up. Also retrieves joystick status.]]
    },
    {
        label = "GetMethod",
        documentation = [[Retrieves the implementation function of]]..
                        [[ a method.]]
    },
    {
        label = "Goto",
        documentation = [[Jumps to the specified label and continues]]..
                        [[ execution.]]
    },
    {
        label = "GroupActivate",
        documentation = [[Activates the next window in a window group]]..
                        [[ that was defined with GroupAdd.]]
    },
    {
        label = "GroupAdd",
        documentation = [[Adds a window specification to a window group]]..
                        [[, creating the group if necessary.]]
    },
    {
        label = "GroupClose",
        documentation = [[Closes the active window if it was just activated]]..
                        [[ by GroupActivate or GroupDeactivate. It then activates]]..
                        [[ the next window in the series. It can also close all windows in a group.]]
    },
    {
        label = "GroupDeactivate",
        documentation = [[Similar to GroupActivate except activates]]..
                        [[ the next window not in the group.]]
    },
    {
        label = "Gui()",
        documentation = [[Creates and returns a new Gui object. This]]..
                        [[ can be used to define a custom window, or graphical user]]..
                        [[ interface (GUI), to display information or accept user input.]]
    },
    {
        label = "GuiCtrlFromHwnd",
        documentation = [[Retrieves the GuiControl object of a GUI]]..
                        [[ control associated with the specified HWND.]]
    },
    {
        label = "GuiFromHwnd",
        documentation = [[Retrieves the Gui object of a GUI window]]..
                        [[ associated with the specified HWND.]]
    },
    {
        label = "HasBase",
        documentation = [[Returns a non-zero number if the specified]]..
                        [[ value is derived from the specified base object.]]
    },
    {
        label = "HasMethod",
        documentation = [[Returns a non-zero number if the specified]]..
                        [[ value has a method by the specified name.]]
    },
    {
        label = "HasProp",
        documentation = [[Returns a non-zero number if the specified]]..
                        [[ value has a property by the specified name.]]
    },
    {
        label = "HotIf / HotIfWin...",
        documentation = [[Specifies the criteria for subsequently created]]..
                        [[ or modified hotkey variants.]]
    },
    {
        label = "Hotkey",
        documentation = [[Creates, modifies, enables, or disables a]]..
                        [[ hotkey while the script is running.]]
    },
    {
        label = "Hotstring",
        documentation = [[Creates, modifies, enables, or disables a]]..
                        [[ hotstring while the script is running.]]
    },
    {
        label = "If",
        documentation = [[Specifies one or more statements to execute]]..
                        [[ if an expression evaluates to true.]]
    },
    {
        label = "IL_Create",
        documentation = [[]],
    },
    {
        label = "IL_Add",
        documentation = [[]],
    },
    {
        label = "IL_Destroy",
        documentation = [[The means by which icons are added to a ListView]]..
                        [[ or TreeView control.]]
    },
    {
        label = "ImageSearch",
        documentation = [[Searches a region of the screen for an image.]]
    },
    {
        label = "IniDelete",
        documentation = [[Deletes a value from a standard format .ini]]..
                        [[ file.]]
    },
    {
        label = "IniRead",
        documentation = [[Reads a value, section or list of section]]..
                        [[ names from a standard format .ini file.]]
    },
    {
        label = "IniWrite",
        documentation = [[Writes a value or section to a standard format]]..
                        [[ .ini file.]]
    },
    {
        label = "InputBox",
        documentation = [[Displays an input box to ask the user to]]..
                        [[ enter a string.]]
    },
    {
        label = "InputHook",
        documentation = [[Creates an object which can be used to collect]]..
                        [[ or intercept keyboard input.]]
    },
    {
        label = "InstallKeybdHook",
        documentation = [[Installs or uninstalls the keyboard hook.]]
    },
    {
        label = "InstallMouseHook",
        documentation = [[Installs or uninstalls the mouse hook.]]
    },
    {
        label = "InStr",
        documentation = [[Searches for a given occurrence of a string]]..
                        [[, from the left or the right.]]
    },
    {
        label = "Integer",
        documentation = [[Converts a numeric string or floating-point]]..
                        [[ value to an integer.]]
    },
    {
        label = "IsLabel",
        documentation = [[Returns a non-zero number if the specified]]..
                        [[ label exists in the current scope.]]
    },
    {
        label = "IsObject",
        documentation = [[Returns a non-zero number if the specified]]..
                        [[ value is an object.]]
    },
    {
        label = "IsSet / IsSetRef",
        documentation = [[Returns a non-zero number if the specified]]..
                        [[ variable has been assigned a value.]]
    },
    {
        label = "KeyHistory",
        documentation = [[Displays script info and a history of the]]..
                        [[ most recent keystrokes and mouse clicks.]]
    },
    {
        label = "KeyWait",
        documentation = [[Waits for a key or mouse/joystick button]]..
                        [[ to be released or pressed down.]]
    },
    {
        label = "ListHotkeys",
        documentation = [[Displays the hotkeys in use by the current]]..
                        [[ script, whether their subroutines are currently running]]..
                        [[, and whether or not they use the keyboard or mouse hook.]]
    },
    {
        label = "ListLines",
        documentation = [[Enables or disables line logging or displays]]..
                        [[ the script lines most recently executed.]]
    },
    {
        label = "ListVars",
        documentation = [[Displays the script's variables: their names]]..
                        [[ and current contents.]]
    },
    {
        label = "ListViewGetContent",
        documentation = [[Returns a list of items/rows from a ListView.]]
    },
    {
        label = "LoadPicture",
        documentation = [[Loads a picture from file and returns a bitmap]]..
                        [[ or icon handle.]]
    },
    {
        label = "Log",
        documentation = [[Returns the logarithm (base 10) of the specified]]..
                        [[ number.]]
    },
    {
        label = "Ln",
        documentation = [[Returns the natural logarithm (base e) of]]..
                        [[ the specified number.]]
    },
    {
        label = "Loop (normal)",
        documentation = [[Performs a series of functions repeatedly]]..
                        [[: either the specified number of times or until break is]]..
                        [[ encountered.]]
    },
    {
        label = "Loop Files",
        documentation = [[Retrieves the specified files or folders]]..
                        [[, one at a time.]]
    },
    {
        label = "Loop Parse",
        documentation = [[Retrieves substrings (fields) from a string]]..
                        [[, one at a time.]]
    },
    {
        label = "Loop Read",
        documentation = [[Retrieves the lines in a text file, one at]]..
                        [[ a time.]]
    },
    {
        label = "Loop Reg",
        documentation = [[Retrieves the contents of the specified registry]]..
                        [[ subkey, one item at a time.]]
    },
    {
        label = "Map",
        documentation = [[Creates a Map from a list of key-value pairs.]]
    },
    {
        label = "Max",
        documentation = [[Returns the highest value of one or more]]..
                        [[ numbers.]]
    },
    {
        label = "MenuBar()",
        documentation = [[Creates a MenuBar object, which can be used]]..
                        [[ to define a GUI menu bar.]]
    },
    {
        label = "Menu()",
        documentation = [[Creates a Menu object, which can be used]]..
                        [[ to create and display a menu.]]
    },
    {
        label = "MenuFromHandle",
        documentation = [[Retrieves the Menu or MenuBar object corresponding]]..
                        [[ to a Win32 menu handle.]]
    },
    {
        label = "MenuSelect",
        documentation = [[Invokes a menu item from the menu bar of]]..
                        [[ the specified window.]]
    },
    {
        label = "Min",
        documentation = [[Returns the lowest value of one or more numbers.]]
    },
    {
        label = "Mod",
        documentation = [[Modulo. Returns the remainder of the specified]]..
                        [[ dividend divided by the specified divisor.]]
    },
    {
        label = "MonitorGet",
        documentation = [[Checks if the specified monitor exists and]]..
                        [[ optionally retrieves its bounding coordinates.]]
    },
    {
        label = "MonitorGetCount",
        documentation = [[Returns the total number of monitors.]]
    },
    {
        label = "MonitorGetName",
        documentation = [[Returns the operating system's name of the]]..
                        [[ specified monitor.]]
    },
    {
        label = "MonitorGetPrimary",
        documentation = [[Returns the number of the primary monitor.]]
    },
    {
        label = "MonitorGetWorkArea",
        documentation = [[Checks if the specified monitor exists and]]..
                        [[ optionally retrieves the bounding coordinates of its working]]..
                        [[ area.]]
    },
    {
        label = "MouseClick",
        documentation = [[Clicks or holds down a mouse button, or turns]]..
                        [[ the mouse wheel. NOTE: The Click function is generally]]..
                        [[ more flexible and easier to use.]]
    },
    {
        label = "MouseClickDrag",
        documentation = [[Clicks and holds the specified mouse button]]..
                        [[, moves the mouse to the destination coordinates, then releases]]..
                        [[ the button.]]
    },
    {
        label = "MouseGetPos",
        documentation = [[Retrieves the current position of the mouse]]..
                        [[ cursor, and optionally which window and control it is hovering]]..
                        [[ over.]]
    },
    {
        label = "MouseMove",
        documentation = [[Moves the mouse cursor.]]
    },
    {
        label = "MsgBox",
        documentation = [[Displays the specified text in a small window]]..
                        [[ containing one or more buttons (such as Yes and No).]]
    },
    {
        label = "Number",
        documentation = [[Converts a numeric string to a pure integer]]..
                        [[ or floating-point number.]]
    },
    {
        label = "NumGet",
        documentation = [[Returns the binary number stored at the specified]]..
                        [[ address+offset.]]
    },
    {
        label = "NumPut",
        documentation = [[Stores one or more numbers in binary format]]..
                        [[ at the specified address+offset.]]
    },
    {
        label = "ObjAddRef",
        documentation = [[Increments an object's reference count.]]
    },
    {
        label = "ObjRelease",
        documentation = [[Decrements an object's reference count.]]
    },
    {
        label = "ObjBindMethod",
        documentation = [[Creates a BoundFunc object which calls a]]..
                        [[ method of a given object.]]
    },
    {
        label = "ObjHasOwnProp",
        documentation = [[These functions are equivalent to built-in]]..
                        [[ methods of the Object type. It is usually recommended to]]..
                        [[ use the corresponding method instead.]]
    },
    {
        label = "ObjOwnProps",
        documentation = [[These functions are equivalent to built-in]]..
                        [[ methods of the Object type. It is usually recommended to]]..
                        [[ use the corresponding method instead.]]
    },
    {
        label = "ObjGetBase",
        documentation = [[Retrieves an object's base object.]]
    },
    {
        label = "ObjGetCapacity",
        documentation = [[Returns the current capacity of the object]]..
                        [['s internal array of properties.]]
    },
    {
        label = "ObjOwnPropCount",
        documentation = [[Returns the number of properties owned by]]..
                        [[ an object.]]
    },
    {
        label = "ObjSetBase",
        documentation = [[Sets an object's base object.]]
    },
    {
        label = "ObjSetCapacity",
        documentation = [[Sets the current capacity of the object's]]..
                        [[ internal array of own properties.]]
    },
    {
        label = "OnClipboardChange",
        documentation = [[Causes the specified function to be called]]..
                        [[ automatically whenever the clipboard's content changes.]]
    },
    {
        label = "OnError",
        documentation = [[Causes the specified function to be called]]..
                        [[ automatically when an unhandled error occurs.]]
    },
    {
        label = "OnExit",
        documentation = [[Causes the specified function to be called]]..
                        [[ automatically when the script exits.]]
    },
    {
        label = "OnMessage",
        documentation = [[Causes the specified function to be called]]..
                        [[ automatically whenever the script receives the specified]]..
                        [[ message.]]
    },
    {
        label = "Ord",
        documentation = [[Returns the ordinal value (numeric character]]..
                        [[ code) of the first character in the specified string.]]
    },
    {
        label = "OutputDebug",
        documentation = [[Sends a string to the debugger (if any) for]]..
                        [[ display.]]
    },
    {
        label = "Pause",
        documentation = [[Pauses the script's current thread.]]
    },
    {
        label = "Persistent",
        documentation = [[Prevents the script from exiting automatically]]..
                        [[ when its last thread completes, allowing it to stay running]]..
                        [[ in an idle state.]]
    },
    {
        label = "PixelGetColor",
        documentation = [[Retrieves the color of the pixel at the specified]]..
                        [[ x,y coordinates.]]
    },
    {
        label = "PixelSearch",
        documentation = [[Searches a region of the screen for a pixel]]..
                        [[ of the specified color.]]
    },
    {
        label = "PostMessage",
        documentation = [[Places a message in the message queue of]]..
                        [[ a window or control.]]
    },
    {
        label = "ProcessClose",
        documentation = [[Forces the first matching process to close.]]
    },
    {
        label = "ProcessExist",
        documentation = [[Checks if the specified process exists.]]
    },
    {
        label = "ProcessGetName",
        documentation = [[Returns the name of the specified process.]]
    },
    {
        label = "ProcessGetParent",
        documentation = [[Returns the process ID (PID) of the process]]..
                        [[ which created the specified process.]]
    },
    {
        label = "ProcessGetPath",
        documentation = [[Returns the path of the specified process.]]
    },
    {
        label = "ProcessSetPriority",
        documentation = [[Changes the priority level of the first matching]]..
                        [[ process.]]
    },
    {
        label = "ProcessWait",
        documentation = [[Waits for the specified process to exist.]]
    },
    {
        label = "ProcessWaitClose",
        documentation = [[Waits for all matching processes to close.]]
    },
    {
        label = "Random",
        documentation = [[Generates a pseudo-random number.]]
    },
    {
        label = "RegExMatch",
        documentation = [[Determines whether a string contains a pattern]]..
                        [[ (regular expression).]]
    },
    {
        label = "RegExReplace",
        documentation = [[Replaces occurrences of a pattern (regular]]..
                        [[ expression) inside a string.]]
    },
    {
        label = "RegCreateKey",
        documentation = [[Creates a registry key without writing a]]..
                        [[ value.]]
    },
    {
        label = "RegDelete",
        documentation = [[Deletes a value from the registry.]]
    },
    {
        label = "RegDeleteKey",
        documentation = [[Deletes a subkey from the registry.]]
    },
    {
        label = "RegRead",
        documentation = [[Reads a value from the registry.]]
    },
    {
        label = "RegWrite",
        documentation = [[Writes a value to the registry.]]
    },
    {
        label = "Reload",
        documentation = [[Replaces the currently running instance of]]..
                        [[ the script with a new one.]]
    },
    {
        label = "Return",
        documentation = [[Returns from a subroutine to which execution]]..
                        [[ had previously jumped via function-call, Hotkey activation]]..
                        [[, or other means.]]
    },
    {
        label = "Round",
        documentation = [[Returns the specified number rounded to N]]..
                        [[ decimal places.]]
    },
    {
        label = "Run",
        documentation = [[Runs an external program.]]
    },
    {
        label = "RunAs",
        documentation = [[Specifies a set of user credentials to use]]..
                        [[ for all subsequent uses of Run and RunWait.]]
    },
    {
        label = "RunWait",
        documentation = [[Runs an external program and waits until]]..
                        [[ it finishes.]]
    },
    {
        label = "Send",
        documentation = [[Sends simulated keystrokes and mouse clicks]]..
                        [[ to the active window.]]
    },
    {
        label = "SendText",
        documentation = [[Sends simulated keystrokes and mouse clicks]]..
                        [[ to the active window.]]
    },
    {
        label = "SendInput",
        documentation = [[Sends simulated keystrokes and mouse clicks]]..
                        [[ to the active window.]]
    },
    {
        label = "SendPlay",
        documentation = [[Sends simulated keystrokes and mouse clicks]]..
                        [[ to the active window.]]
    },
    {
        label = "SendEvent",
        documentation = [[Sends simulated keystrokes and mouse clicks]]..
                        [[ to the active window.]]
    },
    {
        label = "SendLevel",
        documentation = [[Controls which artificial keyboard and mouse]]..
                        [[ events are ignored by hotkeys and hotstrings.]]
    },
    {
        label = "SendMessage",
        documentation = [[Sends a message to a window or control and]]..
                        [[ waits for acknowledgement.]]
    },
    {
        label = "SendMode",
        documentation = [[Makes Send synonymous with SendEvent or SendPlay]]..
                        [[ rather than the default (SendInput). Also makes Click and]]..
                        [[ MouseMove/Click/Drag use the specified method.]]
    },
    {
        label = "SetCapsLockState",
        documentation = [[Sets the state of CapsLock. Can also force]]..
                        [[ the key to stay on or off.]]
    },
    {
        label = "SetControlDelay",
        documentation = [[Sets the delay that will occur after each]]..
                        [[ control-modifying function.]]
    },
    {
        label = "SetDefaultMouseSpeed",
        documentation = [[Sets the mouse speed that will be used if]]..
                        [[ unspecified in Click and MouseMove/Click/Drag.]]
    },
    {
        label = "SetKeyDelay",
        documentation = [[Sets the delay that will occur after each]]..
                        [[ keystroke sent by Send or ControlSend.]]
    },
    {
        label = "SetMouseDelay",
        documentation = [[Sets the delay that will occur after each]]..
                        [[ mouse movement or click.]]
    },
    {
        label = "SetNumLockState",
        documentation = [[Sets the state of NumLock. Can also force]]..
                        [[ the key to stay on or off.]]
    },
    {
        label = "SetScrollLockState",
        documentation = [[Sets the state of ScrollLock. Can also force]]..
                        [[ the key to stay on or off.]]
    },
    {
        label = "SetRegView",
        documentation = [[Sets the registry view used by RegRead, RegWrite]]..
                        [[, RegDelete, RegDeleteKey and Loop Reg, allowing them in]]..
                        [[ a 32-bit script to access the 64-bit registry view and vice versa.]]
    },
    {
        label = "SetStoreCapsLockMode",
        documentation = [[Whether to restore the state of CapsLock]]..
                        [[ after a Send.]]
    },
    {
        label = "SetTimer",
        documentation = [[Causes a function to be called automatically]]..
                        [[ and repeatedly at a specified time interval.]]
    },
    {
        label = "SetTitleMatchMode",
        documentation = [[Sets the matching behavior of the WinTitle]]..
                        [[ parameter in built-in functions such as WinWait.]]
    },
    {
        label = "SetWinDelay",
        documentation = [[Sets the delay that will occur after each]]..
                        [[ windowing function, such as WinActivate.]]
    },
    {
        label = "SetWorkingDir",
        documentation = [[Changes the script's current working directory.]]
    },
    {
        label = "Shutdown",
        documentation = [[Shuts down, restarts, or logs off the system.]]
    },
    {
        label = "Sin",
        documentation = [[Returns the trigonometric sine of the specified]]..
                        [[ number.]]
    },
    {
        label = "Sleep",
        documentation = [[Waits the specified amount of time before]]..
                        [[ continuing.]]
    },
    {
        label = "Sort",
        documentation = [[Arranges a variable's contents in alphabetical]]..
                        [[, numerical, or random order (optionally removing duplicates]]..
                        [[).]]
    },
    {
        label = "SoundBeep",
        documentation = [[Emits a tone from the PC speaker.]]
    },
    {
        label = "SoundGetInterface",
        documentation = [[Retrieves a native COM interface of a sound]]..
                        [[ device or component.]]
    },
    {
        label = "SoundGetMute",
        documentation = [[Retrieves a mute setting of a sound device.]]
    },
    {
        label = "SoundGetName",
        documentation = [[Retrieves the name of a sound device or component.]]
    },
    {
        label = "SoundGetVolume",
        documentation = [[Retrieves a volume setting of a sound device.]]
    },
    {
        label = "SoundPlay",
        documentation = [[Plays a sound, video, or other supported]]..
                        [[ file type.]]
    },
    {
        label = "SoundSetMute",
        documentation = [[Changes a mute setting of a sound device.]]
    },
    {
        label = "SoundSetVolume",
        documentation = [[Changes a volume setting of a sound device.]]
    },
    {
        label = "SplitPath",
        documentation = [[Separates a file name or URL into its name]]..
                        [[, directory, extension, and drive.]]
    },
    {
        label = "Sqrt",
        documentation = [[Returns the square root of the specified]]..
                        [[ number.]]
    },
    {
        label = "StatusBarGetText",
        documentation = [[Retrieves the text from a standard status]]..
                        [[ bar control.]]
    },
    {
        label = "StatusBarWait",
        documentation = [[Waits until a window's status bar contains]]..
                        [[ the specified string.]]
    },
    {
        label = "StrCompare",
        documentation = [[Compares two strings alphabetically.]]
    },
    {
        label = "StrGet",
        documentation = [[Copies a string from a memory address or]]..
                        [[ buffer, optionally converting it from a given code page.]]
    },
    {
        label = "String",
        documentation = [[Converts a value to a string.]]
    },
    {
        label = "StrLen",
        documentation = [[Retrieves the count of how many characters]]..
                        [[ are in a string.]]
    },
    {
        label = "StrLower",
        documentation = [[Converts a string to lowercase.]]
    },
    {
        label = "StrPtr",
        documentation = [[Returns the current memory address of a string.]]
    },
    {
        label = "StrPut",
        documentation = [[Copies a string to a memory address or buffer]]..
                        [[, optionally converting it to a given code page.]]
    },
    {
        label = "StrReplace",
        documentation = [[Replaces the specified substring with a new]]..
                        [[ string.]]
    },
    {
        label = "StrSplit",
        documentation = [[Separates a string into an array of substrings]]..
                        [[ using the specified delimiters.]]
    },
    {
        label = "StrUpper",
        documentation = [[Converts a string to uppercase.]]
    },
    {
        label = "SubStr",
        documentation = [[Retrieves one or more characters from the]]..
                        [[ specified position in a string.]]
    },
    {
        label = "Suspend",
        documentation = [[Disables or enables all or selected hotkeys]]..
                        [[ and hotstrings.]]
    },
    {
        label = "Switch",
        documentation = [[Executes one case from a list of mutually]]..
                        [[ exclusive candidates.]]
    },
    {
        label = "SysGet",
        documentation = [[Retrieves dimensions of system objects, and]]..
                        [[ other system properties.]]
    },
    {
        label = "SysGetIPAddresses",
        documentation = [[Returns an array of the system's IPv4 addresses.]]
    },
    {
        label = "Tan",
        documentation = [[Returns the trigonometric tangent of the]]..
                        [[ specified number.]]
    },
    {
        label = "Thread",
        documentation = [[Sets the priority or interruptibility of]]..
                        [[ threads. It can also temporarily disable all timers.]]
    },
    {
        label = "Throw",
        documentation = [[Signals the occurrence of an error. This]]..
                        [[ signal can be caught by a try-catch statement.]]
    },
    {
        label = "ToolTip",
        documentation = [[Creates an always-on-top window anywhere]]..
                        [[ on the screen.]]
    },
    {
        label = "TraySetIcon",
        documentation = [[Changes the script's tray icon (which is]]..
                        [[ also used by GUI and dialog windows).]]
    },
    {
        label = "TrayTip",
        documentation = [[Creates a balloon message window near the]]..
                        [[ tray icon. On Windows 10, a toast notification may be shown]]..
                        [[ instead.]]
    },
    {
        label = "Trim / LTrim / RTrim",
        documentation = [[Trims characters from the beginning and/or]]..
                        [[ end of a string.]]
    },
    {
        label = "Try",
        documentation = [[Guards one or more statements against runtime]]..
                        [[ errors and values thrown by the throw statement.]]
    },
    {
        label = "Type",
        documentation = [[Returns the class name of a value.]]
    },
    {
        label = "Until",
        documentation = [[Applies a condition to the continuation of]]..
                        [[ a Loop or For-loop.]]
    },
    {
        label = "VarSetStrCapacity",
        documentation = [[Enlarges a variable's holding capacity or]]..
                        [[ frees its memory. This is not normally needed, but may]]..
                        [[ be used with DllCall or SendMessage or to optimize repeated concatenation.]]
    },
    {
        label = "VerCompare",
        documentation = [[Compares two version strings.]]
    },
    {
        label = "While-loop",
        documentation = [[Performs a series of functions repeatedly]]..
                        [[ until the specified expression evaluates to false.]]
    },
    {
        label = "WinActivate",
        documentation = [[Activates the specified window.]]
    },
    {
        label = "WinActivateBottom",
        documentation = [[Same as WinActivate except that it activates]]..
                        [[ the bottommost matching window rather than the topmost.]]
    },
    {
        label = "WinActive",
        documentation = [[Checks if the specified window is active]]..
                        [[ and returns its unique ID (HWND).]]
    },
    {
        label = "WinClose",
        documentation = [[Closes the specified window.]]
    },
    {
        label = "WinExist",
        documentation = [[Checks if the specified window exists and]]..
                        [[ returns the unique ID (HWND) of the first matching window.]]
    },
    {
        label = "WinGetClass",
        documentation = [[Retrieves the specified window's class name.]]
    },
    {
        label = "WinGetClientPos",
        documentation = [[Retrieves the position and size of the specified]]..
                        [[ window's client area.]]
    },
    {
        label = "WinGetControls",
        documentation = [[Returns the control names for all controls]]..
                        [[ in the specified window.]]
    },
    {
        label = "WinGetControlsHwnd",
        documentation = [[Returns the unique ID numbers for all controls]]..
                        [[ in the specified window.]]
    },
    {
        label = "WinGetCount",
        documentation = [[Returns the number of existing windows that]]..
                        [[ match the specified criteria.]]
    },
    {
        label = "WinGetID",
        documentation = [[Returns the unique ID number of the specified]]..
                        [[ window.]]
    },
    {
        label = "WinGetIDLast",
        documentation = [[Returns the unique ID number of the last]]..
                        [[/bottommost window if there is more than one match.]]
    },
    {
        label = "WinGetList",
        documentation = [[Returns the unique ID numbers of all existing]]..
                        [[ windows that match the specified criteria.]]
    },
    {
        label = "WinGetMinMax",
        documentation = [[Returns the state whether the specified window]]..
                        [[ is maximized or minimized.]]
    },
    {
        label = "WinGetPID",
        documentation = [[Returns the Process ID number of the specified]]..
                        [[ window.]]
    },
    {
        label = "WinGetPos",
        documentation = [[Retrieves the position and size of the specified]]..
                        [[ window.]]
    },
    {
        label = "WinGetProcessName",
        documentation = [[Returns the name of the process that owns]]..
                        [[ the specified window.]]
    },
    {
        label = "WinGetProcessPath",
        documentation = [[Returns the full path and name of the process]]..
                        [[ that owns the specified window.]]
    },
    {
        label = "WinGetStyle",
        documentation = [[Returns the style or extended style (respectively)]]..
                        [[ of the specified window.]]
    },
    {
        label = "WinGetExStyle",
        documentation = [[Returns the style or extended style (respectively)]]..
                        [[ of the specified window.]]
    },
    {
        label = "WinGetText",
        documentation = [[Retrieves the text from the specified window.]]
    },
    {
        label = "WinGetTitle",
        documentation = [[Retrieves the title of the specified window.]]
    },
    {
        label = "WinGetTransColor",
        documentation = [[Returns the color that is marked transparent]]..
                        [[ in the specified window.]]
    },
    {
        label = "WinGetTransparent",
        documentation = [[Returns the degree of transparency of the]]..
                        [[ specified window.]]
    },
    {
        label = "WinHide",
        documentation = [[Hides the specified window.]]
    },
    {
        label = "WinKill",
        documentation = [[Forces the specified window to close.]]
    },
    {
        label = "WinMaximize",
        documentation = [[Enlarges the specified window to its maximum]]..
                        [[ size.]]
    },
    {
        label = "WinMinimize",
        documentation = [[Collapses the specified window into a button]]..
                        [[ on the task bar.]]
    },
    {
        label = "WinMinimizeAll / WinMinimizeAllUndo",
        documentation = [[Minimizes or unminimizes all windows.]]
    },
    {
        label = "WinMove",
        documentation = [[Changes the position and/or size of the specified]]..
                        [[ window.]]
    },
    {
        label = "WinMoveBottom",
        documentation = [[Sends the specified window to the bottom]]..
                        [[ of stack; that is, beneath all other windows.]]
    },
    {
        label = "WinMoveTop",
        documentation = [[Brings the specified window to the top of]]..
                        [[ the stack without explicitly activating it.]]
    },
    {
        label = "WinRedraw",
        documentation = [[Redraws the specified window.]]
    },
    {
        label = "WinRestore",
        documentation = [[Unminimizes or unmaximizes the specified]]..
                        [[ window if it is minimized or maximized.]]
    },
    {
        label = "WinSetAlwaysOnTop",
        documentation = [[Makes the specified window stay on top of]]..
                        [[ all other windows (except other always-on-top windows).]]
    },
    {
        label = "WinSetEnabled",
        documentation = [[Enables or disables the specified window.]]
    },
    {
        label = "WinSetRegion",
        documentation = [[Changes the shape of the specified window]]..
                        [[ to be the specified rectangle, ellipse, or polygon.]]
    },
    {
        label = "WinSetStyle",
        documentation = [[Changes the style or extended style of the]]..
                        [[ specified window, respectively.]]
    },
    {
        label = "WinSetExStyle",
        documentation = [[Changes the style or extended style of the]]..
                        [[ specified window, respectively.]]
    },
    {
        label = "WinSetTitle",
        documentation = [[Changes the title of the specified window.]]
    },
    {
        label = "WinSetTransColor",
        documentation = [[Makes all pixels of the chosen color invisible]]..
                        [[ inside the specified window.]]
    },
    {
        label = "WinSetTransparent",
        documentation = [[Makes the specified window semi-transparent.]]
    },
    {
        label = "WinShow",
        documentation = [[Unhides the specified window.]]
    },
    {
        label = "WinWait",
        documentation = [[Waits until the specified window exists.]]
    },
    {
        label = "WinWaitActive / WinWaitNotActive",
        documentation = [[Waits until the specified window is active]]..
                        [[ or not active.]]
    },
    {
        label = "WinWaitClose",
        documentation = [[Waits until no matching windows can be found.]]
    },
    {
        label = "#ClipboardTimeout",
        documentation = [[Changes how long the script keeps trying]]..
                        [[ to access the clipboard when the first attempt fails.]]
    },
    {
        label = "#DllLoad",
        documentation = [[Loads a DLL or EXE file before the script]]..
                        [[ starts executing.]]
    },
    {
        label = "#ErrorStdOut",
        documentation = [[Sends any syntax error that prevents a script]]..
                        [[ from launching to the standard error stream (stderr) rather]]..
                        [[ than displaying a dialog.]]
    },
    {
        label = "#Hotstring",
        documentation = [[Changes hotstring options or ending characters.]]
    },
    {
        label = "#HotIf",
        documentation = [[Creates context-sensitive hotkeys and hotstrings.]]..
                        [[ Such hotkeys perform a different action (or none at all]]..
                        [[) depending on any condition (an expression).]]
    },
    {
        label = "#HotIfTimeout",
        documentation = [[Sets the maximum time that may be spent evaluating]]..
                        [[ a single #HotIf expression.]]
    },
    {
        label = "#Include / #IncludeAgain",
        documentation = [[Causes the script to behave as though the]]..
                        [[ specified file's contents are present at this exact position.]]
    },
    {
        label = "#InputLevel",
        documentation = [[Controls which artificial keyboard and mouse]]..
                        [[ events are ignored by hotkeys and hotstrings.]]
    },
    {
        label = "#MaxThreads",
        documentation = [[Sets the maximum number of simultaneous threads.]]
    },
    {
        label = "#MaxThreadsBuffer",
        documentation = [[Causes some or all hotkeys to buffer rather]]..
                        [[ than ignore keypresses when their #MaxThreadsPerHotkey]]..
                        [[ limit has been reached.]]
    },
    {
        label = "#MaxThreadsPerHotkey",
        documentation = [[Sets the maximum number of simultaneous threads]]..
                        [[ per hotkey or hotstring.]]
    },
    {
        label = "#NoTrayIcon",
        documentation = [[Disables the showing of a tray icon.]]
    },
    {
        label = "#Requires",
        documentation = [[Displays an error and quits if a version]]..
                        [[ requirement is not met.]]
    },
    {
        label = "#SingleInstance",
        documentation = [[Determines whether a script is allowed to]]..
                        [[ run again when it is already running.]]
    },
    {
        label = "#SuspendExempt",
        documentation = [[Exempts subsequent hotkeys and hotstrings]]..
                        [[ from suspension.]]
    },
    {
        label = "#UseHook",
        documentation = [[Forces the use of the hook to implement all]]..
                        [[ or some keyboard hotkeys.]]
    },
    {
        label = "#Warn",
        documentation = [[Enables or disables warnings for specific]]..
                        [[ conditions which may indicate an error, such as a typo]]..
                        [[ or missing "global" declaration.]]
    },
    {
        label = "#WinActivateForce",
        documentation = [[Skips the gentle method of activating a window]]..
                        [[ and goes straight to the forceful method.]]
    },
}
