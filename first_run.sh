#!/bin/sh

# Install vundle first for the vim files 
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 


# linking all files to the home folder 
ln -s ./.gitconfig ~/.gitconfig
ln -s ./.gitignore ~/.gitignore
ln -s ./.vimrc ~/.vimrc
ln -s ./.tmux.conf ~/.tmux.conf

# making directories needed for my vim files
mkdir ~/.backup
mkdir ~/.undo

# adding alias to zshrc 
echo 'alias tmux="tmux -2"' >> ~/.zshrc
echo 'alias ll="ls -lhtr"' >> ~/.zshrc
echo 'alias rsync="rsync --progress"' >> ~/.zshrc
echo 'alias rm="rm -i"' >> ~/.zshrc
echo 'alias ca="conda activate"' >> ~/.zshrc
