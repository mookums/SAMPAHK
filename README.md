## SAMPUDF-RM (Remastered) for AutoHotKey


[Original repository and project by paul-phoenix](https://github.com/paul-phoenix/SAMP-UDF-for-AutoHotKey)

[Original fork by mister-muki](https://github.com/mistermuki/SAMP-UDF-for-AutoHotKey)

SAMPUDF-RM is an API specifically made to be used inside of [AutoHotKey](https://www.ahkscript.org). A majority of the framework comes from the original repository made by paul-phoenix, linked above. The RM at the end stands for Remastered as it's a different variation of the same project. The end goal for SAMP UDF RM is to be able to provide a more complete platform for SA-MP modding in AutoHotKey. If you have any issues with the program, please leave an issue ticket.

### PURPOSE OF A NEW REPOSITORY VS THE OLD FORK
A major issue with the old repository by paul-phoenix was that it was in disarray and he has not been active for the last 4+ years. There are unresolved issues and pull requests sitting around that'll never be touched. I decided that this tool was too valuable to me and too useful to just throw away and let rot so I'm making an effort here to revive the project, integrating the old pull requests, as well as patching and constantly adding new content.

### SUPPORTED SAMP VERSIONS
_Currently. only SA-MP Version 0.3.7 R1. Support for R2 coming soon._


### *USAGE* 
#### (MAKE SURE THE SAMP.ahk FILE IS IN THE SAME DIRECTORY AS THE .ahk YOU ARE WRITING)

#### Refercing the API function dictionary:
```
SendMode Input
SetWorkingDir %A_ScriptDir%
#Warn
#UseHook
#NoEnv
#SingleInstance force
#include %A_ScriptDir%\SAMP.ahk
```


### *COMPILING*
#### - Get [AutoHotKey](https://www.autohotkey.com/)
#### - Launch "Convert .ahk to .exe" (Example Below)

![img1](https://i.imgur.com/57TfJX5.png)

#### - Plug in "input" with your .ahk file and output with your final .exe file.
#### - Turn MPRESS off.
#### - Compile script with ANSI/UNICODE32.

![img2](https://i.imgur.com/XWLroJX.png)
