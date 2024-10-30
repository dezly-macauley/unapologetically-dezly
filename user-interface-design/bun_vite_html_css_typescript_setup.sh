# ABOUT: A script to setup a basic User Interface
# -----------------------------------------------------------------------------
# Requirements: Bun
# -----------------------------------------------------------------------------
# To make this script executable, run this command first:
# chmod +x bun_vite_html_css_typescript.sh
# -----------------------------------------------------------------------------
# Run the script with this command:
# source bun_vite_html_css_typescript.sh
# -----------------------------------------------------------------------------

#______________________________________________________________________________

project_name=""

echo "Name of new project:"
read project_name

# https://vite.dev/guide/#scaffolding-your-first-vite-project
bun create vite $project_name --template vanilla-ts 

cd $project_name
bun install

echo "To start and open the server in the browser, run this command:"
echo "bun run dev --open"

#______________________________________________________________________________

