#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
 
SetCapsLockState, AlwaysOff
 
CapsLock & f::
                Send {Right}
return
 
CapsLock & d::
                Send {Down}
return
 
CapsLock & s::
                Send {Left}
return
 
CapsLock & e::
                Send {Up}
return
 
CapsLock & r::
                Send {End}
return
 
CapsLock & w::
                Send {Home}
return
 
CapsLock & g::
                Send ^{Right}
return
 
CapsLock & a::
                Send ^{Left}
return
