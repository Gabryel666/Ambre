@echo off
setlocal enabledelayedexpansion

set "sourceFolder=D:\Drive\Anthony\Jeux de rôle\Ambre\Ambre Dharma"

for /f "usebackq tokens=*" %%a in (`dir /x "%sourceFolder%" ^| findstr /i "DIR"`) do (
    set shortName=%%a
)

:: Utilisez !shortName:~38! dans votre commande de copie
echo Short name: !shortName:~38!

:: Exemple de commande de copie avec le chemin court
robocopy "!shortName:~38!" "C:\Sites\Ambre\src" /MIR

endlocal
