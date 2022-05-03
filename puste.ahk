!r::
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return
;____________________________________________________________________________________________________________________________________________________

;

!z::
while (true) {
	WinActivate, numery - Notepad
	Sleep, 1000
	Click, 2
	Send, ^c
	Sleep, 100
	WinActivate, WebBill at WBPROD - Google Chrome
	Sleep, 100
	Send, ^l
	SendInput, https://webbill.brunata.dk/
	Send, {enter}
	Sleep, 2500
	Send, ^v
	Send, {enter}
	Sleep, 2000
	Send, {tab 10}
	Send, {enter}
	Send, {tab 5}
	Send, {enter}
	MsgBox, End of loading?
	Click, Right
	SendInput, {down 12}
	Send, {enter}
	Sleep, 1500
	Send, ^a
	Sleep, 1500
	Send, ^c
	Sleep, 1000
	Send, ^{f4}
	Sleep, 100
	WinActivate, C:\Users\hania\Desktop\test.html - Notepad++
	Send, ^a
	Sleep, 500
	Send, ^v
	Sleep, 500
	Send, ^s
	Sleep, 100
	WinActivate, Desktop
	MsgBox, End of program?
	WinActivate, numery - Notepad
	Sleep, 100
	Send, ^c
	Sleep, 100
	WinActivate, Desktop
	Send, f
	Send, {f2}
	Send, ^v
	Send, {enter}
}
return

Esc::ExitApp



