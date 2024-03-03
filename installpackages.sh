#!/bin/bash

# Define packages to be installed with pacman
pacman_packages=(
    stow
    xdg-desktop-portal-gtk
    nemo
    alacritty
    zsh
    power-profiles-daemon
    waybar
    gnome-disk-utility
    gnome-software
    polkit-kde-agent
    brightnessctl
    ttf-font-awesome
    ttf-roboto-mono
    font-manager
    flatpak
    gvfs
    swaybg 
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
    waybar-module-pacman-updates-git
    swaync
    hyprlock-git
    rofi-lbonn-wayland-git
    pyprland
    gradience-git
    appimagelauncher
    hypridle-git
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




