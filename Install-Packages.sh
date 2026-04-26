#!/bin/bash

# Atualiza sistema
sudo pacman -Syu --noconfirm

# Instala dependências para compilar AUR
sudo pacman -S --needed git base-devel --noconfirm

# Instala yay
git clone https://aur.archlinux.org/yay.git
cd yay || exit
makepkg -si --noconfirm
cd ..
rm -rf yay

# Instala todos os pacotes com yay
yay -S --needed --noconfirm \
git curl flatpak unrar unzip 7zip code obs-studio firefox chromium \
rofi hyprpaper waybar mako fastfetch cava nerd-fonts pavucontrol \
btop nvim steam pcmanfm jre-openjdk discord wine wine-gecko \
wine-mono winetricks wl-clipboard cliphist spotify \
lxappearance grim slurp rocm-smi-lib jq gvfs gvfs-mtp gvfs-smb \
gvfs-nfs gvfs-afc gvfs-goa gvfs-gphoto2 udisks2 udiskie ntfs-3g \
dosfstools exfatprogs polkit lxsession tumbler ffmpegthumbnailer \
jmtpfs libmtp qbittorrent

echo "Instalação concluída."
