#IfWinActive

;Hotstrings to make it faster to compile and test my project. Replace filenames/paths with any project you are currently working on.
:*:c.compile::gcc temptable.c -o temptable.exe
:*:exe.run::.\temptable.exe
:*:cfolder::cd C:\Users\haram\OneDrive\Desktop\c

;Creates hotkey ctrl+alt+t that opens Command Prompt.
^!t:: 
Msgbox, Command Prompt opened.
Run, cmd.exe 
return

;Disables Get Help
F1::
Msgbox, Help key disabled.
return

F12:: ;Disables airplane mode
Msgbox, Airplane key disabled.
return

;Creatres hotkey ctrl+alt+n that opens NeoVim.
^!n::
if FileExist("C:\Users\haram\Downloads\nvim-win64\bin\nvim-qt.exe")
{
    Msgbox, NeoVim found. Now opening...
    Msgbox, NeoVim opened.
    ;Replace with NeoVim's filepath on your computer or the script will throw a Not Found error.
    Run, C:\Users\haram\Downloads\nvim-win64\bin\nvim-qt.exe
    return
}

else 
{
    Msgbox, NeoVim not found.
    return
}

if FileExist("C:\Program Files\Git\git-bash.exe")
{
    Msgbox, Git Bash found. Now opening...
    Msgbox, Git Bash opened.
    ;Replace with Git Bash's filepath on your computer or the script will throw a Not Found error.
    Run, C:\Program Files\Git\git-bash.exe
    return
}

else
{
    Msgbox, Git Bash not found. 
    return
}

;Creates hotkey ctrl+alt+v that opens Visual Studio Code.
^!v::
if FileExist("C:\Users\haram\AppData\Local\Programs\Microsoft VS Code\code.exe")
{
    Msgbox, Visual Studio Code found. Now opening...
    Msgbox, Visual Studio Code opened.
    ;Replace with Visual Studio Code's filepath on your computer or the script will throw a Not Found error.
    Run, C:\Users\haram\AppData\Local\Programs\Microsoft VS Code\code.exe
    return
}

else 
{
    Msgbox, Visual Studio Code not found.
    return
}
