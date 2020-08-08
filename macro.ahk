#SingleInstance, Force
#Persistent
#NoEnv

; TODO SELECT MODE ASSAULT OR DEMOLITION

; Demo
; Saint			: x150 	y400
; Trench		: x280 	y400
; Gl1tch		: x420 	y400
; Lancer		: x560	y400
; Scorch		: x700 	y400
; Talon			: x850 	y400

; Asssault
; Saint			: x150 	y400
; Talon			: x280 	y400
; Trench		: x420 	y400
; Gl1tch		: x560 	y400
; Lancer		: x700	y400
; Scorch		: x850 	y400


; Both
; Anvil			: x140 	y250
; Chaac			: x280 	y250
; Dallas		: x425 	y250
; Dima			: x570 	y250
; Phantom		: x710 	y250
; Ronin			: x845 	y250
; Vy			: x150	y550
; Lock		 	: x1250	y840


x := ""
y := ""

Gui, -Resize -MaximizeBox
Gui, Add, DropDownList, x1 y3 w298 vCharacter gCharacterSelect, Select a character and hold F1 at the character selection||Anvil|Chaac|Dallas|Dima|Phantom|Ronin|Saint|Trench|Gl1tch|Lancer|Scorch|Talon|Vy
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
	y = 250
} else if (Character = "Phantom") {
	x = 710
	y = 250
} else if (Character = "Trench") {
	x = 280
	y = 400
} else if (Character = "Saint") {
	x = 150
	y = 400
} else if (Character = "Chaac") {
	x = 280
	y = 250
} else if (Character = "Talon") {
	x = 850
	y = 400
} else if (Character = "Anvil") {
	x = 140
	y = 250
} else if (Character = "Dallas") {
	x = 425
	y = 250
} else if (Character = "Dima") {
	x = 570
	y = 250
} else if (Character = "Gl1tch") {
	x = 420
	y = 400
} else if (Character = "Lancer") {
	x = 560
	y = 400
} else if (Character = "Scorch") {
	x = 700
	y = 400
} else if (Character = "Vy") {
	x = 150
	y = 550
}
return

GuiClose:
ExitApp