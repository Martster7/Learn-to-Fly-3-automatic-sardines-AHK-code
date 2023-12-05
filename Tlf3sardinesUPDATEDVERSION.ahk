; Skript pro AutoHotKey

; Nastavení triggeru pro spuštění skriptu (např. Ctrl+Alt+Z)
^!z::
    Loop 66 { ; Celý proces se zopakuje 2x
        ; První kliknutí (X40 Y40)
        Click, 40, 40
        Sleep, 300 ; Pauza 300 ms
        
        ; Druhé kliknutí (X960 Y940)
        Click, 960, 940
        Sleep, 300 ; Pauza 300 ms
        
        ; Třetí kliknutí (X965 Y840)
        Click, 965, 840
        Sleep, 300 ; Pauza 300 ms
        
        ; Čtvrté kliknutí (X800 Y780)
        Click, 800, 780
        Sleep, 300 ; Pauza 300 ms
        
        ; Páté podržení (5 sekund) (X800 Y700)
        Click, down, 800, 700
        Sleep, 2300 ; Pauza 2300 ms
        Click, up
        
        Sleep, 1000 ; Pauza 1000 ms
        
        ; Šesté kliknutí (X550 Y700)
        Click, 550, 700
        Sleep, 1000 ; Pauza 1000 ms
        
        ; Sedmé kliknutí (X940 Y560)
        Click, 940, 560
        Sleep, 1000 ; Pauza 1000 ms
        
        ; Osmé kliknutí (CTRL + V zaroven) (X830 Y745)
        Send, ^v
        Sleep, 300 ; Pauza 300 ms
        
        ; Deváté kliknutí (X830 Y745)
        Click, 830, 745
        Sleep, 750 ; Pauza 750 ms

        ; Desáté kliknutí (X1000 Y680)
        Click, 1000, 680
        Sleep, 750 ; Pauza 750 ms

        ; Kontrola stisknutí klávesy pro ukončení skriptu
        if GetKeyState("Ctrl") and GetKeyState("Alt") and GetKeyState("C")
        {
            MsgBox, Skript byl ukončen uživatelem.
            ExitApp
        }
    }

    ; Vypnutí skriptu po dokončení
    ExitApp

return
