#Requires AutoHotkey v2.0

toggle := false  ; Global toggle state

F8:: {
    global toggle
    toggle := !toggle
    if toggle {
        SetTimer(AntiAFK, 1000)         ; Turn ON timer every 1 sec
        ToolTip("Anti-AFK Script: ON")
    } else {
        SetTimer(AntiAFK, 0)            ; Turn OFF timer
        ToolTip("Anti-AFK Script: OFF")
        Sleep(1000)
        ToolTip()
    }
}

AntiAFK() {
    keyChoice := Random(1, 4)
    key := keyChoice = 1 ? "w"
         : keyChoice = 2 ? "a"
         : keyChoice = 3 ? "s"
         : "d"

    Send("{" . key . " down}")
    Sleep 50
    Send("{" . key . " up}")
}
