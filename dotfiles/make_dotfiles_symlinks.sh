#!/bin/bash
############################
# BASED ON http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/bash-dotfiles/dotfiles/current                    # dotfiles directory
olddir=~/bash-dotfiles/dotfiles/old             # old dotfiles backup directory
files="bashrc vimrc zshrc gitconfig"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file $olddir
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

# Add timestamp of last update to a file for easy tracking
date +'%Y/%m/%d - %H:%M:%S' > last_updated.txt
