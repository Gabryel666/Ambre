@echo off

:: Exécute mdbook build pour générer les fichiers HTML
mdbook build

:: Effectue un commit avec un message générique (vous pouvez le personnaliser)
git add .
git commit -m "Update documentation"
git push origin main
