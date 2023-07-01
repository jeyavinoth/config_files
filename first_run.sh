#!/bin/sh

# Install vundle first for the vim files 
# git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# linking all files to the home folder 
ln -s ${PWD}/.gitconfig ~/.gitconfig
ln -s ${PWD}/.gitignore ~/.gitignore
ln -s ${PWD}/.tmux.conf ~/.tmux.conf
ln -s ${PWD}/nvim ~/.config/nvim
# ln -s ${PWD}/.hammerspoon ~/.hammerspoon

# # making directories needed for my vim files
# mkdir ~/.backup
# mkdir ~/.undo

# adding alias to zshrc 
# echo 'alias ll="ls -lhtr"' >> ~/.zshrc
# echo 'alias rsync="rsync --progress"' >> ~/.zshrc
# echo 'alias rm="rm -i"' >> ~/.zshrc
# echo 'alias ca="conda activate"' >> ~/.zshrc
# echo 'source ~/.vim/aliases.sh' >> ~/.zshrc

zsh_append=${PWD}/zsh_append.sh
grep -qxF "source ${zsh_append}" ~/.zshrc || echo "source ${zsh_append}" >> ~/.zshrc

