!z::
while (true) {
WinActivate, numery - Notepad
Sleep, 1000
Click, 2
Send, ^c
Sleep, 100
WinActivate, WebBill na WBPROD - Google Chrome
Sleep, 100
MouseClick, Left, 290, 850
Sleep, 500
Send, {tab}
Send, ^v
Sleep, 1000
Send, {enter}
MouseMove, 1350, 385
MsgBox, Po pobraniu raportu, Report list.
WinActivate, Pobrane
Send, c
Send, {f2}
Send, ^v
Send, {enter}
}
return

Esc::ExitApp