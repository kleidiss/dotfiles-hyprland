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
    grim
    slurp
    udiskie
    python-pipx
    kvantum
    imagemagick
    nwg-look
    cliphist
    pamixer
    playerctl
    otf-droid-nerd
    noto-fonts-emoji
    papirus-icon-theme
    ttf-arimo-nerd
)

# Define packages to be installed with yay
yay_packages=(
    wlogout
    waypaper-git
    swww
    waybar-module-pacman-updates-git
    swaync
    swaylock-effects
    rofi-lbonn-wayland-git
    pyprland
    gradience-git
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

# Set adw-gtk3 theme
echo "Setting gtk theme..."
flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# Install pywal16
echo "Installing pywall16..."
pipx ensurepath
pipx install pywal16

# Use the pywal GTK theme for flatpak
echo "Configuring flatpak to use the pywal GTK theme..."
sudo flatpak override --filesystem=xdg-config/gtk-4.0
sudo flatpak override --filesystem=xdg-config/gtk-3.0
sudo flatpak override --filesystem=xdg-config/Kvantum:ro
sudo flatpak override --env=QT_STYLE_OVERRIDE=kvantum
flatpak install org.kde.KStyle.Kvantum/x86_64/5.15-22.08 org.kde.KStyle.Kvantum/x86_64/5.15-23.08 org.kde.KStyle.Kvantum/x86_64/6.5 org.kde.KStyle.Kvantum/x86_64/6.6 org.kde.KStyle.Kvantum/x86_64/5.15 org.kde.KStyle.Kvantum/x86_64/5.15-21.08

echo "Configuration complete."




