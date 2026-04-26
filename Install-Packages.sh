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
git curl flatpak unrar unzip 7zip code obs-studio firefox chromium \
rofi hyprpaper waybar mako fastfetch cava nerd-fonts pavucontrol \
btop nvim steam pcmanfm jre-openjdk discord wine winetricks \
wl-clipboard cliphist spotify lxappearance grim slurp rocm-smi-lib jq \
gvfs gvfs-mtp gvfs-smb gvfs-nfs gvfs-afc gvfs-goa gvfs-gphoto2 \
udisks2 udiskie ntfs-3g dosfstools exfatprogs polkit lxsession \
tumbler ffmpegthumbnailer jmtpfs libmtp qbittorrent noto-fonts-emoji \

# Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install -y flathub org.vinegarhq.Sober
flatpak install -y flathub com.modrinth.ModrinthApp
flatpak install -y flathub page.codeberg.libre_menu_editor.LibreMenuEditor

echo "Instalação concluída."
