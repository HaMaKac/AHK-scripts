!r::
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return
;____________________________________________________________________________________________________________________________________________________

;Muszę mieć otwarty Middleware w dowolnym miejscu jako osobna karta w Google Chrome i arkusz w Excelu w odpowiednim nr. radiowym.

!a::
while (true) {
	Send, ^c
	Sleep, 500
	WinActivate, Middleware - Google Chrome
	Send, ^l
	SendInput, https://one.bmz.cloud/devices/detail/
	Send, ^v
	SendInput, {#}readings
	Send, {enter}
	Sleep, 1500
	SendInput, {tab 27}
	Sleep, 1500
	SendInput, {down 4}
	Sleep, 500
	Send, {enter}
	Sleep, 1500
	SendInput, {tab 4}
	SendInput, {down 4}
	SendInput, {tab}
	Send, {enter}
	Sleep, 1000
	Send, ^f
	SendInput, 01.04.2021 02:00:00
	Send, {enter}
	Sleep, 2000
	if (GetKeyState("RButton") = 1) {
		MsgBox, Jaka data? Zaznacz. Potem kliknij okno Excela i wybierz odczyt.
		Sleep, 3000
		WinActivate, Middleware - Google Chrome
		Sleep, 200
		Send, ^c
		Sleep, 500
		Send, !{tab}
		Sleep, 200
		SendInput, {right 2}
		Sleep, 500
		Send, ^v
		SendInput, {left}	
		Sleep, 1000
		Click, 2
		Send, ^c
		Sleep, 500
		Send, !{tab}
		Sleep, 200
		Send, ^v
		Sleep, 500	
		SendInput, {down}{left}
		Sleep, 500
	}
	else {
		Click, 2
		Send, ^c
		Sleep, 500
		Send, !{tab}
		Sleep, 200
		Send, {right}
		Sleep, 500		
		Send, ^v
		SendInput, {down}{left}
		Sleep, 500
	}
}
return

Esc::ExitApp