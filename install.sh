if [ ! -d ./bundle/Vundle.vim ]; then
    echo "Installing Vundle"
    git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim
else
    echo "Vundle Already Installed"
fi
if [[ -L ~/.vimrc ]]; then
    echo "Already Symlinked"
else
    echo "Creating Symlink"
    mv ~/.vimrc ~/.vimrc.old
    ln -s ~/.vim/.vimrc ~/.vimrc
fi
echo "Installing Plugins"
vim +PluginInstall +qall
