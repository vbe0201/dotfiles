#!/bin/bash

printf "IMPORTANT: Please make sure you verified all the scripts yourself and installed all necessary dependencies.\n\
        Otherwise, these configs will break and won't function properly.\n"

make_symlink() {
    printf "Installing %s...\n" $1

    # Remove pre-existing symlink
    unlink ~/$2 2>/dev/null

    # Make new symlink
    ln -s `pwd`/$1 ~/$2 2>/dev/null
}

# dotfiles in home directory
dotfiles=(
    .bashrc
    .bash_logout
    .gitconfig
    .profile
    .vimrc
    .Xdefaults
    .xinitrc
)

# Copy all dotfiles
for dotfile in ${dotfiles[*]}; do
    make_symlink $dotfile $dotfile
done

# Install Vundle.vim, if missing
if [[ ! -d ~/.vim/bundle/Vundle.vim ]]; then
    echo "Installing Vundle.vim..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "PLEASE NOTE: Run `vim +PluginInstall +qall` before starting to use Vim."
fi

# Copy my wallpaper, if missing
if [[ ! -d ~/.config/wallpaper.png ]]; then
    echo "Adding default wallpaper as ~/.config/wallpaper.png. Make sure to replace it if you don't like it."
    cp .config/wallpaper.png ~/.config/wallpaper.png
fi

# Additional dotfiles
printf "Installing fontconfig...\n"
ln -s `pwd`/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
printf "Installing i3 config...\n"
ln -s `pwd`/.config/i3/config ~/.config/i3/config
printf "Installing i3status config...\n"
ln -s `pwd`/.config/i3status/config ~/.config/i3status/config
printf "Installing i3blocks config...\n"
ln -s `pwd`/.config/i3blocks/config ~/.config/i3blocks/config
printf "Installing compton config...\n"
ln -s `pwd`/.config/compton.conf ~/.config/compton.conf
printf "Installing mpv config...\n"
ln -s `pwd`/.config/mpv/input.conf ~/.config/mpv/input.conf
printf "Installing ranger config...\n"
ln -s `pwd`/.config/ranger/rc.conf ~/.config/ranger/rc.conf
cp .config/ranger/scope.sh ~/.config/ranger/scope.sh
printf "Installing zathura config...\n"
ln -s `pwd`/.config/zathura/zathurarc ~/.config/zathura/zathurarc
printf "Installing lightdm config...\n"
ln -s `pwd`/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf

# Scripts
echo "Installing scripts...\n"
mkdir ~/.scripts
cp .scripts/* ~/.scripts/*

echo "Installation finished! Hope you like my dotfiles :)"
