# DnD_Scripts

## Set Up PyCharm

### Setting up Python from Scratch (Windows)

**1. Get Python files**

* Make sure to download the latest 
(or code specic driver) from the official 
[Python Website.](https://www.python.org/downloads/)
* Note there are specific drivers for different systems
i.e. 32bit, 64bit systems, and some older OS specific 
drivers.


**2. Run the Downloaded Python Executable Installer**

* When the application opens make sure to select 
**Custom Installation**, and have the following options selected.
  * Documentation
  * pip
  * tcl/tk and IDLE (this installs tkinter and IDLE)
  * Python test suit (to install standard test suite of Python)
  * Recommended (install launcher for all users)
* Next is the Advanced Options Section
  * Recommended (install for all users)
  * Add Python to Environment variables
  * Associate files with Python
  * Create shortcuts for installed applications
  * Note: remember the install directory if possible 
(most likely ...\AppData\local\Programs\Python\...)
* Install and wait to see the page that says the install was a 
success

Note: if you accidentally skipped the custom installation you 
can reopen the app and it will give you the option to modify
the installation options.

**3. Verify Install**

* Open command line or other similar application (Powershell)
* Type one of the following commands and you should see
  * python --version
  * python -V
  * python
    * Note: using this command enters you into an interactive 
    session you may need to use `exit()` to return to the
    command line.

Command Line Prompt:
`C:\Users\emcsporr>Python --version`

Expected System Response:
`Python 3.11.0`

### Setting Up PyCharm Environment 
* Go to File and search Interpreter, this will likely pop up the 
specific project interpreter option.
  * Select that, it may not give you the downloaded version as an option
  If so manually navigate to the AppData folder and find the 
  Python.exe file.
* Go to Run -> Edit Configurations
  * Press the Plus button and setup the parameters using the interpreter
  previously setup.