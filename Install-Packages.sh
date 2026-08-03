#!/bin/bash
set -e

# Atualiza sistema e instala dependências base
sudo pacman -Syu --noconfirm
sudo pacman -S --needed git base-devel --noconfirm

# Instala yay
[ -d yay ] && rm -rf yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

# Instala todos os pacotes com yay
yay -S --needed --noconfirm \
git code spotify discord steam firefox rofi fastfetch chromium \
ghostty mako dolphin waybar hyprpaper btop cava 


# Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.bluesabre.MenuLibre

echo "Instalação concluída."
