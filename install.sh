if [[ -L ~/.vimrc ]]; then
    echo "Already Symlinked"
else
    echo "Creating Symlink"
    mv ~/.vimrc ~/.vimrc.old
    ln -s ~/.vim/.vimrc ~/.vimrc
fi
echo "Installing Plugins"
vim +PlugInstall +qall
