## SAMPAHK

Based off: [SAMPUDF](https://github.com/paul-phoenix/SAMP-UDF-for-AutoHotKey) by paul-phoenix

### Synopsis
SAMPAHK is an API specifically made to be used inside of [AutoHotKey](https://www.ahkscript.org). A majority of the framework comes from the original repository made by paul-phoenix, linked above.The end goal for SAMPAHK is to be able to provide a more complete platform for SA-MP memory modding in AutoHotKey. If you have any issues with the program, please leave an issue ticket.

### SUPPORTED SAMP VERSIONS
_Currently. only [SA-MP Version 0.3.7 R1.](https://dracoblue.net/downloads/samp-client/)_

### USAGE 
#### (MAKE SURE THE SAMP.AHK FILE IS IN THE SAME DIRECTORY AS THE .AHK YOU ARE WRITING)

#### Refercing the API in your script:
```
SendMode Input
SetWorkingDir %A_ScriptDir%
#Warn
#UseHook
#NoEnv
#SingleInstance force
#include %A_ScriptDir%\SAMP.ahk
```
#### Example of script usage:
```
SendMode Input
SetWorkingDir %A_ScriptDir%
#Warn
#UseHook
#NoEnv
#SingleInstance force
#include %A_ScriptDir%\SAMP.ahk

Numpad1::
SendInput tName:{Space}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Input varName, V I M,{enter}
SendInput {end}+{home}{Del}{esc}
varID := getPlayerIdByName(varName)
showGameText(getPlayerNameById(varID) "~n~Score: " getPlayerScoreById(varID) "~n~Ping: " getPlayerPingById(varID), 2000, 5)
return
```
### REQUIREMENTS


### COMPILING
#### - Get [AutoHotKey](https://www.autohotkey.com/)
#### - Launch "Convert .ahk to .exe" (Example Below)

![img1](https://i.imgur.com/57TfJX5.png)
#### - Plug in "input" with your .ahk file and output with your final .exe file.
#### - Turn MPRESS off.
#### - Compile script with ANSI/UNICODE32.
![img2](https://i.imgur.com/XWLroJX.png)
