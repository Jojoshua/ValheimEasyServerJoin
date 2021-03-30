; Author: Josh Harris
; Instructions - Change the following variables under Macro1
; 1. Change steamDir to your steam directory if different
; 2. Set serverIP
; 3. Set serverPort
; 4. Set serverPassword
; 5. Set serverDescription (optional but nice to see if managing multiple scripts)
; 6. Load this script into AutoHotkey and press Alt + . to start

;Example config
;serverIP := "1.1.1.1"
;serverPort := 2456
;serverPassword := "12345"
;serverDescription := "Jojoshua's World"

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


!.::
Macro1:
steamDir := "C:\Program Files (x86)\Steam\"
serverIP := ""
serverPort := 
serverPassword := ""
serverDescription := ""

steamExe := "steam.exe"
steamPath := steamDir . steamExe

Run, "%steamPath%" -applaunch 892970 +connect %serverIP%:%serverPort% +password %serverPassword%, %steamDir%
MsgBox, 262177, Valheim Easy Server Join - %serverDescription%, Wait until character selection screen is loaded, then click OK
IfMsgBox, OK
{
    SetTimer, Macro2, -1000
}
Return

^-::
Macro2:
WinRestore, Valheim ahk_class UnityWndClass
Sleep, 333
WinActivate, Valheim ahk_class UnityWndClass
Sleep, 333
WinGetPos, valheimWindowX, valheimWindowY, valheimWindowW, valheimWindowH, Valheim ahk_class UnityWndClass
startX := valheimWindowW / 2
startY := valheimWindowH - 50
WinWaitActive, Valheim ahk_class UnityWndClass
Sleep, 333
Click, %startX%, %startY% Left, 1
Sleep, 1
SetTimer, Macro3, -7000
Return

F5::
Macro3:
WinRestore, Valheim ahk_class UnityWndClass
Sleep, 333
WinActivate, Valheim ahk_class UnityWndClass
Sleep, 333
WinWaitActive, Valheim ahk_class UnityWndClass
Sleep, 333
SendRaw, %serverPassword%
Sleep, 500
Send, {Enter}
Return

