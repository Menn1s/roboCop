::Enter the file holding the list of computers as an argument. Like this >roboCop list.txt
:: > roboCop list.txt "C:\path\to\file\" "C:\path\to\destination\on\remote\machine"



ECHO ~~Welcome to Robocop~~
ECHO This tool is designed to\n help you send a file\n or folder to many PCs\non your domain.
ECHO Press any key to continue...
PAUSE
set /p IPfileName= "Please enter the name of the file containing the list of PCs: "
set /p fileName= "please enter the full path to the file or directory you want copied: " 
set /p dst= "Enter the directory where you want the file to be copied onto the remote hosts: "
ECHO Sending...
FOR /F %%i in (%0\..\%IPfileName%) do robocopy "%fileName%" "\\%%i\%dst%" 

::/MIR option will mirror the source tree and files. So if there are files on the remote host that are not on the source
::they will be deleted and replaced by the files from the source.

::The /F option allows processing of a text file. For each item (separated by spaces) in the file you specify
::robocopy will be performed. Notice how the variable 'i' is used in place of the server location. 
