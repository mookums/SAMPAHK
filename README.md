## SAMPUDF-RM (Remastered) for AutoHotKey
### For SA-MP Version 0.3.7 R1


[Original repository and project by paul-phoenix](https://github.com/paul-phoenix/SAMP-UDF-for-AutoHotKey)

[Original fork by mister-muki](https://github.com/mistermuki/SAMP-UDF-for-AutoHotKey)

SAMPUDF-RM is an API specifically made to be used inside of [AutoHotKey](https://www.ahkscript.org). A majority of the framework comes from the original repository made by paul-phoenix, linked above. The RM at the end stands for Remastered as it's a different variation of the same project. The end goal for SAMP UDF RM is to be able to provide a more complete platform for SA-MP modding in AutoHotKey. If you have any issues with the program, please leave an issue ticket.

### PURPOSE OF A NEW REPOSITORY VS THE OLD FORK
A major issue with the old repository by paul-phoenix was that it was in disarray and he has not been active for the last 4+ years. There are unresolved issues and pull requests sitting around that'll never be touched. I decided that this tool was too valuable to me and too useful to just throw away and let rot so I'm making an effort here to revive the project, integrating the old pull requests, as well as patching and constantly adding new content.


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

### Functions:
```
    ; #####################################################################################################################
    ; # SAMP-Functions:                                                                                                   #
    ; #     - isInChat()                                check if dialog or chatbox is active                              #
    ; #     - getUsername()                             get local player name                                             #
    ; #     - getId()                                   get local player id                                               #
    ; #     - sendChatMessage(wText)                    send a message to the server                                      #
    ; #     - addMessageToChatWindow(wText)             add a "private" text to the chatbox                               #
    ; #     - showGameText(wText, dwTime, dwTextsize)   show a text on the sreen                                          #
    ; #     - showDialog(dwStyle, wCaption,             show a dialog-box                                                 #
    ; #                   wInfo, wButton1)                                                                                #
    ; #     - playAudioStream(wUrl)                     play an "audio stream"                                            #
    ; #     - stopAudioStream()                         stopp an audio stream                                             #
    ; #     - blockChatInput()                          call this func to block chat messages to server                   #
    ; #     - unBlockChatInput()                        call this func to unblock chat messages to server                 #
    ; # ----------------------------------------------------------------------------------------------------------------- #
    ; #     - patchRadio()                              (internal stuff)                                                  #
    ; #     - unPatchRadio()                            (internal stuff)                                                  #
    ; #####################################################################################################################
    ; #     - getPlayerNameById(dwId)                   get some player's name                                            #
    ; #     - getPlayerIdByName(wName)                  get some player's id                                              #
    ; #     - getPlayerScoreById(dwId)                  get some player's score                                           #
    ; #     - getPlayerPingById(dwId)                   get some player's ping                                            #
    ; #     - isNPCById(dwId)                           check if player is a NPC                                          #
    ; #     - getIP()                                   get server ip                                                     #
    ; #     - getHostname()                             get server hostname                                               #
    ; #     - countOnlinePlayers()                      get players count                                                 #
    ; # ----------------------------------------------------------------------------------------------------------------- #
    ; #     - updateScoreboardDataEx()                  (internal stuff)                                                  #
    ; #     - updateOScoreboardData()                   (internal stuff)                                                  #
    ; #####################################################################################################################
    ; # Player Functions :                                                                                                #
    ; #     - getPlayerHealth()                         get HP                                                            #
    ; #     - getPlayerArmor()                          get ARMOR                                                         #
    ; #     - getPlayerInteriorId()                     get interior id                                                   #
    ; #     - getPlayerMoney()                          get player money                                                  #
    ; #####################################################################################################################
    ; # Vehicle Functions:                                                                                                #
    ; #     - isPlayerInAnyVehicle()                    check if the local player is inside some vehicle                  #
    ; #     - isPlayerDriver()                          check if player is driver                                         #
    ; #     - getVehicleHealth()                        get vehicle health                                                #
    ; #     - getVehicleType()                          get vehicle type                                                  #
    ; #     - getVehicleModelId()                       get vehicle model id                                              #
    ; #     - getVehicleModelName()                     get vehicle model name                                            #
    ; #     - getVehicleLightState()                    get vehicle light state                                           #
    ; #     - getVehicleEngineState()                   get vehicle engine state                                          #
    ; #     - getVehicleLockState()                     get vehicle door lock state                                       #
    ; #####################################################################################################################
    ; # Coordinates:                                                                                                      #
    ; #     - getCoordinates()                          get local player's position                                       #
    ; # ----------------------------------------------------------------------------------------------------------------- #
    ; #     - calculateZone(X, Y, Z)                    get zone                                                          #
    ; #     - calculateCity(X, Y, Z)                    get city                                                          #
    ; #     - getCurrentZonecode()                      get zone code (buggy)                                             #
    ; #####################################################################################################################
    ; # Internal Functions:                                                                                               #
    ; #     - initZonesAndCities()                                                                                        #
    ; #     - AddZone(Name, X1, Y1, Z1, X2, Y2, Z2)                                                                       #
    ; #     - AddCity(Name, X1, Y1, Z1, X2, Y2, Z2)                                                                       #
    ; #####################################################################################################################
    ; # Memory Functions:                                                                                                 #
    ; #     - checkHandles()                                                                                              #
    ; #     - refreshGTA()                                                                                                #
    ; #     - refreshSAMP()                                                                                               #
    ; #     - refreshMemory()                                                                                             #
    ; #     - isGameIntialized() -WORK IN PROGRESS-                                                                       #
    ; #     - getPID(szWindow)                                                                                            #                                                                                                  
    ; #     - openProcess(dwPID, dwRights)                                                                                #
    ; #     - closeProcess(hProcess)                                                                                      #
    ; #     - getModuleBaseAddress(sModule, dwPID)                                                                        #
    ; #     - readString(hProcess, dwAddress, dwLen)                                                                      #
    ; #     - readFloat(hProcess, dwAddress)                                                                              #
    ; #     - readDWORD(hProcess, dwAddress)                                                                              #
    ; #     - readMem(hProcess, dwAddress, dwLen=4, type="UInt")                                                          #
    ; #     - writeString(hProcess, dwAddress, wString)                                                                   #
    ; #     - writeRaw(hProcess, dwAddress, data, dwLen)                                                                  #
    ; #     - callWithParams(hProcess, dwFunc, aParams, bCleanupStack = true)                                             #
    ; #     - virtualAllocEx(hProcess, dwSize, flAllocationType, flProtect)                                               #
    ; #     - virtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType)                                                      #
    ; #     - createRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter,                  #
    ; #                             dwCreationFlags, lpThreadId)                                                          #
    ; #     - waitForSingleObject(hThread, dwMilliseconds)                                                                #
    ; #     - __ansiToUnicode(sString, nLen = 0)                                                                          #
    ; #     - __unicodeToAnsi(wString, nLen = 0)                                                                          #
    ; #####################################################################################################################
    ; # Debug Functions:                                                                                                  #
    ; #    - SendToDebug(tString)                                                                                         #
    ; #    - logDebug()                                                                                                   #
    #######################################################################################################################
```
