::Enter the file holding the list of computers as an argument. Like this >roboCop list.txt
:: > roboCop list.txt "C:\path\to\file\" "C:\path\to\destination\on\remote\machine"
FOR /F %%i in (%0\..\%1) do robocopy "%2" "\\%%i\%3" 

::/MIR option will mirror the source tree and files. So if there are files on the remote host that are not on the source
::they will be deleted and replaced by the files from the source.

::The /F option allows processing of a text file. For each item (separated by spaces) in the file you specify
::robocopy will be performed. Notice how the variable 'i' is used in place of the server location. 
