#Dirs
backup=/home/raknoel
working=/home/raknoel/Executables/dot_files

#Git down
git clone git@github.com:RakNoel/dot_files.git

#Files to backup
sudo cp -r $backup/.bashrc $working/bash/
sudo cp -r $backup/.zshrc $working/zsh/
sudo cp -r $backup/.config/nvim/init.vim $working/nvim

git --git-dir=./dot_files/.git add *
git --git-dir=./dot_files/.git commit -a

git --git-dir=./dot_files/.git push

#rm -rf dot_files
