#!/bin/bash

# Additional commands after package installation

# Start daemons
echo "Starting services..."
sudo systemctl enable power-profiles-daemon.service
sudo systemctl start power-profiles-daemon.service
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Update the user directories
echo "Updating user directories..."
xdg-user-dirs-update

# Run stow to sync dotfiles
echo "Syncing dotfiles with stow..."
stow .

# Set adw-gtk3 theme
echo "Setting gtk theme..."
flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
#Default terminal
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty

#Set kvantun theme to pywal
kvantummanager --set pywal

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

# Install oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
rm ~/.zshrc
stow .

echo "Configuration complete."
