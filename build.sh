#!/bin/bash

# Vytvoří výstupní složku
mkdir public

# Zkopíruje všechny potřebné soubory do výstupní složky
# DŮLEŽITÉ: Pokud máte v projektu další soubory (obrázky, styly), přidejte je sem také!
cp index.html public/
cp icon.png public/
cp manifest.json public/

# Nyní provedeme náhradu proměnných, ale pouze v souboru,
# který je uvnitř složky 'public'.
sed -i "s|%REACT_APP_SUPABASE_URL%|$REACT_APP_SUPABASE_URL|g" public/index.html
sed -i "s|%REACT_APP_SUPABASE_KEY%|$REACT_APP_SUPABASE_KEY|g" public/index.html
sed -i "s|%REACT_APP_ADMIN_EMAIL%|$REACT_APP_ADMIN_EMAIL|g" public/index.html
sed -i "s|%REACT_APP_DEFAULT_PASS%|$REACT_APP_DEFAULT_PASS|g" public/index.html

echo "Build finished. Output is in 'public' directory."
