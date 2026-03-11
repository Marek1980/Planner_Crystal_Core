#!/bin/bash

# Tento skript najde zástupné symboly v index.html a nahradí je
# skutečnými hodnotami z proměnných prostředí Vercelu.

echo "Starting substitution..."

sed -i "s|%REACT_APP_SUPABASE_URL%|$REACT_APP_SUPABASE_URL|g" index.html
sed -i "s|%REACT_APP_SUPABASE_KEY%|$REACT_APP_SUPABASE_KEY|g" index.html
sed -i "s|%REACT_APP_ADMIN_EMAIL%|$REACT_APP_ADMIN_EMAIL|g" index.html
sed -i "s|%REACT_APP_DEFAULT_PASS%|$REACT_APP_DEFAULT_PASS|g" index.html

echo "Substitution finished."
