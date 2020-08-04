#SingleInstance, Force
#Persistent
#NoEnv

; Ronin			: x845 	y280
; Phantom		: x710 	y280
; Trench		: x420 	y415
; Saint			: x135 	y425
; Chaac			: x280 	y270
; Talon			: x280 	y415
; Anvil			: x140 	y280
; Dallas		: x425 	y280 
; Gl1tch		: x550 	y425
; Dima			: x570 	y280
; Lancer		: x700 	y415
; Scorch		: x850 	y425
; Vy			: x140	y540
; Lock		 	: x1250	y840

x := ""
y := ""

Gui, -Resize -MaximizeBox
Gui, Add, DropDownList, x1 y3 w298 vCharacter gCharacterSelect, Select a character and hold F1 at the character selection||Anvil|Chaac|Dallas|Dima|Phantom|Ronin|Saint|Talon|Trench|Gl1tch|Lancer|Scorch|Vy
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
		MsgBox, 0x10, Rogue Character Select, Rogue Company is closed :(
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
	x = 420
	y = 415
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
} else if (Character = "Gl1tch") {
	x = 550
	y = 425
} else if (Character = "Lancer") {
	x = 700
	y = 415
} else if (Character = "Scorch") {
	x = 850
	y = 425
} else if (Character = "Vy") {
	x = 140
	y = 540
}
return

GuiClose:
ExitApp