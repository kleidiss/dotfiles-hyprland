#!/bin/bash

# Define packages to be installed with pacman
pacman_packages=(
    stow
    xdg-desktop-portal-gtk
    thunar
    alacritty
    power-profiles-daemon
    waybar
    gnome-disk-utility
    polkit-kde-agent
    brightnessctl
    ttf-font-awesome
    ttf-roboto-mono
    font-manager
    python-pywal
    nwg-look
    flatpak
    gvfs 
    thunar-volman 
    gvfs-mtp
    xdg-user-dirs
    network-manager-applet
    blueman
    bluez-utils
    bluez
    qt5ct
    qt6ct
    lxappearance
    grim
    slurp
    udiskie
    cliphist
    pamixer
    playerctl
    otf-droid-nerd
    noto-fonts-emoji
    ttf-arimo-nerd
)

# Define packages to be installed with yay
yay_packages=(
    wlogout
    waypaper-git
    swww
    waybar-module-pacman-updates-git
    wpgtk-git
    swaync
    qt5-styleplugins
    qt6gtk2-git
    swaylock-effects
    peazip-gtk2-bin
    rofi-lbonn-wayland-git
    pyprland
)

# Install packages with pacman
for pkg in "${pacman_packages[@]}"; do
    echo "Installing $pkg with pacman..."
    sudo pacman -S --noconfirm $pkg
    sleep 2 # Delay for readability and control
done

# Install packages with yay
for pkg in "${yay_packages[@]}"; do
    echo "Installing $pkg with yay..."
    yay -S --noconfirm $pkg
    sleep 2 # Delay for readability and control
done

echo "All packages have been installed."

# Additional commands after package installation

# Update the user directories
echo "Updating user directories..."
xdg-user-dirs-update

# Run stow to sync dotfiles
echo "Syncing dotfiles with stow..."
stow .

# Install wpgtk themes
echo "Installing wpgtk themes..."
wpg-install.sh -G

# Symlink to .themes from ~/.local/share/themes
echo "Creating symlinks for themes..."
mkdir -p ~/.themes 
ln -sf ~/.local/share/themes/FlatColor ~/.themes/FlatColor
ln -sf ~/.local/share/themes/linea-nord-color ~/.themes/linea-nord-color

# Use the pywal GTK theme for flatpak
echo "Configuring flatpak to use the pywal GTK theme..."
sudo flatpak override --filesystem=~/.themes
sudo flatpak override --filesystem=~/.local/share/themes
sudo flatpak override --env=GTK_THEME=linea-nord-color 

echo "Configuration complete."




