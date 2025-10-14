#!/usr/bin/env bash

chmod +x ~/configs/hypr/scripts/install_packages.sh
./configs/hypr/script/install_packages.sh

#Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

#Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

cp -r ~/configs/hypr ~/.config/
cp -r ~/configs/nvim ~/.config/
cp -r ~/configs/waybar ~/.config/
cp -r ~/configs/rofi ~/.config/
cp -r ~/configs/kitty ~/.config/
cp -r ~/configs/Wallpapers ~/Pictures/

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
