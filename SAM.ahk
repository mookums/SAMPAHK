;  /$$$$$$   /$$$$$$  /$$      /$$ /$$$$$$$   /$$$$$$  /$$   /$$ /$$   /$$
; /$$__  $$ /$$__  $$| $$$    /$$$| $$__  $$ /$$__  $$| $$  | $$| $$  /$$/
;| $$  \__/| $$  \ $$| $$$$  /$$$$| $$  \ $$| $$  \ $$| $$  | $$| $$ /$$/
;|  $$$$$$ | $$$$$$$$| $$ $$/$$ $$| $$$$$$$/| $$$$$$$$| $$$$$$$$| $$$$$/
; \____  $$| $$__  $$| $$  $$$| $$| $$____/ | $$__  $$| $$__  $$| $$  $$
; /$$  \ $$| $$  | $$| $$\  $ | $$| $$      | $$  | $$| $$  | $$| $$\  $$
;|  $$$$$$/| $$  | $$| $$ \/  | $$| $$      | $$  | $$| $$  | $$| $$ \  $$
; \______/ |__/  |__/|__/     |__/|__/      |__/  |__/|__/  |__/|__/  \__/
;
; ################################
; https://github.com/kessec/SAMPAHK
; ################################

; UPDATE THIS OR YOUR MERGE WILL BE CLOSED.
Version := "SAM CORE VERSION: 0.6.0"

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#IfWinActive GTA:SA:MP
#Persistent

PIDS := Array()
Names := Array()
logLoc = %A_ScriptDir%\log.txt

FormatTime, tsVar, T12, Time
FileDelete, %logLoc%
FileAppend,/$$$$$$   /$$$$$$  /$$      /$$ /$$$$$$$   /$$$$$$  /$$   /$$ /$$   /$$`n/$$__  $$ /$$__  $$| $$$    /$$$| $$__  $$ /$$__  $$| $$  | $$| $$  /$$/`n| $$  \__/| $$  \ $$| $$$$  /$$$$| $$  \ $$| $$  \ $$| $$  | $$| $$ /$$/`n|  $$$$$$ | $$$$$$$$| $$ $$/$$ $$| $$$$$$$/| $$$$$$$$| $$$$$$$$| $$$$$/`n\____  $$| $$__  $$| $$  $$$| $$| $$____/ | $$__  $$| $$__  $$| $$  $$`n/$$  \ $$| $$  | $$| $$\  $ | $$| $$      | $$  | $$| $$  | $$| $$\  $$`n|  $$$$$$/| $$  | $$| $$ \/  | $$| $$      | $$  | $$| $$  | $$| $$ \  $$`n\______/ |__/  |__/|__/     |__/|__/      |__/  |__/|__/  |__/|__/  \__/ `n, %logLoc%
FileAppend, %Version%`n, %logLoc%
FileReadLine, cVersion, %A_ScriptDir%\sam_mods\SAMP.ahk, 17
FileAppend, %cVersion%`n`n, %logLoc%
FileAppend, %tsVar%: SAM Core successfully loaded.`n, %logLoc%

Sleep, 20000
Loop, %A_ScriptDir%\sam_mods\*.ahk{
    Run, %A_LoopFileFullPath% ,,, vPID
    SplitPath % A_LoopFileFullPath,,,, name
    Names.push(name)
    FormatTime, tsVar, T12, Time
    FileAppend, %tsVar%: %name% successfully loaded.`n, %logLoc%
    PIDS.push(vPID)
  }

Loop, %A_ScriptDir%\sam_mods\*.exe{
  Run, %A_LoopFileFullPath%
  SplitPath % A_LoopFileFullPath, name
  Names.push(name)
  FormatTime, tsVar, T12, Time
  FileAppend, %tsVar%: %name% successfully loaded.`n, %logLoc%
  PIDS.push(vPID)
}

while(true)
{
 if(!WinExist("GTA:SA:MP")){
    Loop % PIDS.Length()
    {
      FormatTime, tsVar, T12, Time
      vTemp := PIDS[A_Index]
      vName := Names[A_Index]
      FileAppend, %tsVar%: %vName% sucessfully closed.`n, %logLoc%
      Process, Close, %vTemp%
    }
    FormatTime, tsVar, T12, Time
    FileAppend, %tsVar%: SAM Core sucessfully closed.`n, %logLoc%
    ExitApp
}
}
