#!/bin/bash
##
##
##
dir=~/dotfiles				# dotfiles dir
olddir=/dotfiles_old		# old dotfiles backup
files="z zshrc"				# files to backup

echo "Creating $olddir for backup of any files in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to $dir directory"
cd $dir
echo "...done"

for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/$olddir
	echo "Creating symlink to $file in ~"
	ln -s $dir/$file ~/.$file
done