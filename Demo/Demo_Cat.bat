@Echo off
cls

Title Cat - Demo - www.batch-man.com

Pushd "..\Bin"
Set "Path=%Path%;%CD%;"
Popd
Pushd "Files"

Cat 1.txt 2.txt 3.txt > "..\Combined_Output.txt"
Color 0a
Echo.
Echo. Combined both 1.txt and 2.txt into the Combined_Output.txt File...
Echo. The best thing is that this plugin can handle special characters as
Echo. well, where batch sometimes shows error.
Echo. Press any Key to Exit...
Pause >nul
popd
Exit