@echo off

:: Mettre à jour le sous-dossier src en fonction de C:\Base\test\
robocopy "D:\Drive\DharmaLink" "C:\Sites\Ambre\src" /MIR
::xcopy "D:\Drive\Anthony\Jeux de rôle\Ambre\Ambre Dharma" "C:\Ambre\src" /E /C /I /Q /H /R /K /Y

:: Demander à l'utilisateur de saisir le message de commit
set /p commit_message=Entrez le message de commit : 

:: Se déplacer dans le dossier de travail
cd C:\Sites\Ambre

:: Générer le site statique avec mdbook build
mdbook build

::Ajouter, commiter et pousser les changements vers GitHub
git add -A
git commit -m "%COMMIT_MESSAGE%"
git push origin main

@echo Fin du traitement.
pause
