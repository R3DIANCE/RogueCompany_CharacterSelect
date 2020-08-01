#SingleInstance, Force
#Persistent
#NoEnv

; Ronin			: x845 	y280
; Phantom		: x710 	y280
; Trench		: x280 	y420
; Saint			: x135 	y425
; Chaac			: x280 	y270
; Talon			: x280 	y415
; Anvil			: x140 	y280
; Dallas		: x425 	y280 
; Dima			: x570 	y280
; Lock		 	: x1250	y840

x := ""
y := ""

Gui, -Resize -MaximizeBox
Gui, Add, DropDownList, x1 y3 w298 vCharacter gCharacterSelect, Select a character and hold F1 at the character selection||Ronin|Phantom|Trench|Saint|Chaac|Talon|Anvil|Dallas|Dima
Gui, Show, xCenter yCenter h25 w300 NoActivate, Rogue Character Bot

F1::
If (x != "" && y != ""){
	selectCharacter(x, y)
}
return 

selectCharacter(x, y){
	if WinExist("ahk_exe RogueCompany.exe"){
		WinActivate
		Click, %x%, %y% 	; Select character
		Click, 1250, 840 	; Lock character	
	} else {
		MsgBox, 0x10, Rogue Character Bot, Rogue Company is closed
	}
}

CharacterSelect:
Gui, Submit, NoHide
if (Character = "Ronin"){
	x = 845
	y = 280
} else if (Character = "Phantom") {
	x = 710
	y = 280
} else if (Character = "Trench") {
	x = 280
	y = 420
} else if (Character = "Saint") {
	x = 135
	y = 425
} else if (Character = "Chaac") {
	x = 280
	y = 270
} else if (Character = "Talon") {
	x = 280
	y = 415
} else if (Character = "Anvil") {
	x = 140
	y = 280
} else if (Character = "Dallas") {
	x = 425
	y = 280
} else if (Character = "Dima") {
	x = 570
	y = 280
}
return

GuiClose:
ExitApp