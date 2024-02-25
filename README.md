# dotfiles
My hyprland dotfiles

## Needed Commands

# #Run stow
stow .

# Use GTK theme for flatpak
sudo flatpak override --filesystem=xdg-data/theme

# Fix oh-my-zsh
print -P '%F{#ff0000}red%f                                                                                                  ✔  
# packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# oh my zsh install


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


