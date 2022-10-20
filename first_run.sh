#!/bin/sh

# Install vundle first for the vim files 
# git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# linking all files to the home folder 
ln -s ./.gitconfig ~/.gitconfig
ln -s ./.gitignore ~/.gitignore
ln -s ./.vim ~/.vim
ln -s ./.tmux.conf ~/.tmux.conf
ln -s ./.vim/nvim ~/.config/nvim

# # making directories needed for my vim files
# mkdir ~/.backup
# mkdir ~/.undo

# adding alias to zshrc 
# echo 'alias ll="ls -lhtr"' >> ~/.zshrc
# echo 'alias rsync="rsync --progress"' >> ~/.zshrc
# echo 'alias rm="rm -i"' >> ~/.zshrc
# echo 'alias ca="conda activate"' >> ~/.zshrc
# echo 'source ~/.vim/aliases.sh' >> ~/.zshrc
grep -qxF 'source ~/.vim/aliases.sh' ~/.zshrc || echo 'source ~/.vim/aliases.sh' >> foo.bar

