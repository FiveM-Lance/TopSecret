; This script was created using Pulover's Macro Creator
; www.macrocreator.com
#NoEnv
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

Macro1:

WinActivate, Madden NFL 19 ahk_class Frostbite ahk_exe Madden19.exe

#Include player.ahk

SetWorkingDir %A_ScriptDir%/coins

Sleep, 77
Send, {Enter Down}
Sleep, 77
Send, {Enter Up}
Sleep, 1000
Send, {Q Down}
Sleep, 77
Send, {Q Up}
Click, 306, 352, 0

Loop
{
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, *5 bid4900buy5000dark.PNG
    CenterImgSrchCoords("*5 bid4900buy5000dark.PNG", FoundX, FoundY)
    
    varxpos := FoundX + 110
    varypos := FoundY

    If ErrorLevel = 0
    	Click, %varxpos%, %varypos% Left, 1
	Sleep, 10
	varxpos := varxpos - 10
	Click, %varxpos%, %varypos% Left, 1
	Sleep, 10
    If (GetKeyState("Q"))
	Break
}
Until ErrorLevel = 0


CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel
	Gui, Pict:Add, Pic, vLoadedPic, %File%
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}

Sleep, 300
Send, {Space Down}
Sleep, 125
Send, {Space Up}
Sleep, 1390
Send, {Down Down}
Sleep, 78
Send, {Down Up}
Sleep, 672
Send, {Space Down}
Sleep, 125
Send, {Space Up}
Sleep, 859
Send, {Up Down}
Sleep, 109
Send, {Up Up}
Return