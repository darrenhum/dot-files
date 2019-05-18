#InstallMouseHook

XButton2::
	Send {XButton2}
return

XButton1::
	Send {XButton1}
return

;Mouse button 1 + left click = close tab
XButton1 & LButton::
	Send {LControl down}
	Send {w down}
	Send {w up}
	Send {LControl up}
return

;Mouse button 2 + left click = close tab
XButton2 & LButton::
	Send {LControl down}
	Send {w down}
	Send {w up}
	Send {LControl up}
return

/*
;Mouse button 2 + wheelup = Left control + Right Win + left arrow
;For switching desktops
XButton2 & WheelUp::
	Send {LControl down}
	Send {RWin down}
	Send {Left down}
	Send {LControl up}
	Send {RWin up}
	Send {Left up}
return

;Mouse button 2 + wheelup = Left control + Right Win + right arrow
;For switching desktops
XButton2 & WheelDown::
	Send {LControl down}
	Send {RWin down}
	Send {Right down}
	Send {LControl up}
	Send {RWin up}
	Send {Right up}
return
*/

;Mouse button 2 + wheeldown = switch to right tab
XButton2 & WheelDown::
	Send {LControl down}
	Send {tab down}
	Send {tab up}
	Send {LControl up}
return

;Mouse button 2 + wheelup= switch to left tab
XButton2 & WheelUp::
	Send {LControl down}
	Send {LShift down}
	Send {tab down}
	Send {tab up}
	Send {LShift up}
	Send {LControl up}
return

;For controlling volume with mouse
XButton1 & WheelUp::
	Send {Volume_Up}
return
XButton1 & WheelDown::
	Send {Volume_Down}
return
