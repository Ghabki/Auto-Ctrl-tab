Gui, Add, Text,, Start/Stop skripta za Ctrl-Tab
Gui, Show, w180 h150
Gui, Add, Button, w80 gStart, Start
Gui, Add, Button, w80 gStop, Stop
Gui, Add, Button, w80 gGuiClose, Exit

Gui, Add, Text, w180 vBesedilo, Status
return

GuiClose:
ExitApp

Start:
ran = 0

GuiControl,, Besedilo,% "Zagnano"
Loop, {
    if (ran = 1)
        break
    send, {LControl down}{Tab down}{LControl up}{Tab up}
    Sleep, 180000
}

Stop:
    GuiControl,, Besedilo,% Ustavljeno
    if (ran = 0)
        ran = 1
    else 
        ran = 0
    return
    

