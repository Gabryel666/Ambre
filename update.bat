@echo off

rem Set the path to your mdbook project directory
set "project_dir=C:\Documentations"

rem Navigate to the project directory
cd /d "%project_dir%"

rem Build the mdbook
mdbook build

rem Commit and push changes
git add -A
git commit -m "Update documentation"
git push origin main

msg * La documentation a été mise à jour.