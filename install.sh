#!/usr/bin/env bash

GLOBAL_THEMES_DIR=~/.local/share/plasma/look-and-feel
KVANTUM_THEMES_DIR=~/.config/Kvantum
WALLPAPER_DIR=~/.local/share/wallpapers
COLOR_SCHEMES_DIR=~/.local/share/color-schemes
KONSOLE_COLOR_SCHEMES_DIR=~/.local/share/konsole
SDDM_THEMES_DIR=/usr/share/sddm/themes
DESKTOP_THEMES_DIR=~/.local/share/plasma/desktoptheme
SYSTEM_DESKTOP_THEMES_DIR=/usr/share/plasma/desktoptheme

echo "Copying look-and-feel folder to $GLOBAL_THEMES_DIR as Utterly-Purple"
mkdir -p $GLOBAL_THEMES_DIR/Utterly-Purple
cp -r look-and-feel/. $GLOBAL_THEMES_DIR/Utterly-Purple

echo "Copying kvantum folder to $KVANTUM_THEMES_DIR as Utterly-Purple"
mkdir -p $KVANTUM_THEMES_DIR/Utterly-Purple
cp -r kvantum/. $KVANTUM_THEMES_DIR/Utterly-Purple

echo "Copying wallpaper to $WALLPAPER_DIR as Utterly-Purple"
mkdir -p $WALLPAPER_DIR/Utterly-Purple
cp -r wallpaper/. $WALLPAPER_DIR/Utterly-Purple

echo "Copying UtterlyPurple.colors to $COLOR_SCHEMES_DIR"
cp UtterlyPurple.colors $COLOR_SCHEMES_DIR

echo "Copying Utterly Purple.colorscheme to $KONSOLE_COLOR_SCHEMES_DIR"
cp Utterly\ Purple.colorscheme $KONSOLE_COLOR_SCHEMES_DIR

echo "Copying sddm to $SDDM_THEMES_DIR as Utterly-Purple"
sudo mkdir -p $SDDM_THEMES_DIR/Utterly-Purple
sudo cp -r sddm/. $SDDM_THEMES_DIR/Utterly-Purple

echo "Copying $DESKTOP_THEMES_DIR/Utterly-Round to $SYSTEM_DESKTOP_THEMES_DIR"
sudo cp -r $DESKTOP_THEMES_DIR/Utterly-Round $SYSTEM_DESKTOP_THEMES_DIR

echo 'Done!'