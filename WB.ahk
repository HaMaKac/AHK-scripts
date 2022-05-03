!r::
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return
;____________________________________________________________________________________________________________________________________________________

;Muszę mieć otwarty WebBill w dowolnym miejscu jako osobna karta w Google Chrome i arkusz w Excelu w dowolnej komórce odpowiedniego wiersza.

;WEBMON - ODCZYTY.
!z:: 
Send, {home}
Send, ^c
WinActivate, WebBill na WBPROD - Google Chrome
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
Send, ^f
return
;____________________________________________________________________________________________________________________________________________________

;POZIOM LOKALU W LIŚCIE MONTAŻOWEJ.
!x:: 
Send, {home}
Send, ^c
WinActivate, WebBill na WBPROD - Google Chrome
Send, ^l
SendInput, https://webbill.brunata.dk/
Send, {enter}
Sleep, 2500
Send, ^v
Send, {enter}
Sleep, 2000
Send, {tab 4}
Send, {enter}
Send, {tab 2}
Send, {enter}
Send, ^f
return
;____________________________________________________________________________________________________________________________________________________

;WYMIANA WM W WB-u.

!c:: ;K/W
WinActivate, WebBill na WBPROD - Google Chrome
Send, !u
Send, !{tab}
Sleep, 200
Send, {home}
SendInput, {right 8}
Sleep, 500
Send, ^c
Sleep, 500
WinActivate, Wymiana miernika - Google Chrome
Send, ^v
Send, !{tab}
Sleep, 200
SendInput, {right 5}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab 2}
Send, ^v
Send, !{tab}
Sleep, 200
Send, {left 3}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab 4}
Send, ^v
Send, !{tab}
Sleep, 200
Send, {right}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab}
Send, ^v
return

!v:: ;uwaga lokalizacji w K/W
Send, {home}
SendInput, {right 9}
Sleep, 500
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab 7}
Send, ^v
return

!b:: ;P
WinActivate, WebBill na WBPROD - Google Chrome
Send, !u
Send, !{tab}
Sleep, 200
Send, {home}
SendInput, {right 13}
Sleep, 500
Send, ^c
Sleep, 500
WinActivate, Wymiana miernika - Google Chrome
Send, {tab 2}
Send, ^v
Send, !{tab}
Sleep, 200
Send, {left 3}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab 4}
Send, ^v
return
;____________________________________________________________________________________________________________________________________________________

;DODAWANIE NOWEGO WM W WB-u.
 
!n:: ;K/W, tabem na pozycji Typ
Send, {home}
SendInput, {right 13}
Sleep, 500
Send, ^c
Sleep, 500
WinActivate, WebBill na WBPROD - Google Chrome
SendInput, 101
Send, {tab 2}
Send, ^v
Send, {tab 3}
Sleep, 500
Send, {down 8}
Send, !{tab}
Sleep, 200
Send, {left 4}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab}
Send, ^v
Send, {tab 6}
Send, Qn 2,5
Send, {tab}
Send, !{tab}
Sleep, 200
Send, {right}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, ^v
Send, !{tab}
Sleep, 200
Send, {right}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, {tab}
Send, ^v
return

!m:: ;K/W, tabem na pozycji Zużycie
Send, {home}
SendInput, {right 13}
Sleep, 500
Send, ^c
Sleep, 500
WinActivate, WebBill na WBPROD - Google Chrome
SendInput, P
Send, {tab}
SendInput, 100
Send, {tab 2}
Send, ^v
Send, {tab 4}
Send, {del}
Send, {tab 6}
Send, !{tab}
Sleep, 200
Send, {left 3}
Send, ^c
Sleep, 500
Send, !{tab}
Sleep, 200
Send, ^v
return 