#Persistent
#NoTrayIcon

; set timer to show tooltip
SetTimer, ShowToolTip, 10
return

; register key event to clear clipboard (ctrl-shift-c)
^+c::
clipboard =
return

; register key event to close app
^+esc::
ExitApp, 0
return


; if tooltip text has value, show tooltip
ShowToolTip:
if (clipboard <> "") {
    ToolTip, data copied
}
else {
    ToolTip
}
return