#!/bin/bash

# Mettez ici la classe de la fenêtre de votre navigateur.
# Pour la trouver, lancez votre navigateur et tapez `hyprctl clients` dans un terminal.
# Cherchez la ligne "class:" de votre navigateur. Ex: "firefox", "Brave-browser", "Google-chrome".
WM_CLASS=$1

# La commande pour lancer votre navigateur
LAUNCH_CMD=$1

# On vérifie si une fenêtre avec cette classe existe déjà
if hyprctl clients | grep -q "class: $WM_CLASS"; then
    # Si elle existe, on focus la fenêtre
    # Hyprland se chargera de changer de workspace automatiquement
    echo $WM_CLASS
    hyprctl dispatch focuswindow class:"^($WM_CLASS)$"
else
    # Sinon, on lance le navigateur
    echo $LAUNCH_CMD
    $LAUNCH_CMD
fi