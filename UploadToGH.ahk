Gui:
Gui, Add, Text,, Ссылка на гит
Gui, Add, Edit, vName
Gui, Add, Text,, Путь к файлу
Gui, Add, Edit, vNamee
Gui, Add, Button, vBtn, продолжить
Gui, Show, , h200, w200, UploadToGitByEss
return
Buttonпродолжить:
{
GuiControlGet, Name
GuiControlGet, Namee
Send #q
sleep 400
Send Gitbash
sleep 1000
Send {Enter}
sleep 1000
StringReplace, NewPath, Namee, \ , /, All
Send cd %NewPath%
sleep 150
Send {Enter}
sleep 150
Send git init
sleep 150
Send {Enter}
sleep 150
Send git add .
sleep 150
Send {Enter}
sleep 150
Send git commit -m "first commit"
sleep 150
Send {Enter}
sleep 150
Send git remote add origin %Name%
sleep 150
Send {Enter}
sleep 150
Send git push -u origin master
sleep 150
Send {Enter}
Guiclose:
ExitApp
return
}


