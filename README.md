# Configuration

Powerline fonts
```
git clone https://github.com/powerline/fonts.git
sh fonts/install.sh
```

Colour Scheme
```
cp -r .espresso/colors .vim/colors
git clone git@github.com:altercation/vim-colors-solarized.git
```

Vundle 
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Oh-My-Shell
```
https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

jEnv
```
git clone https://github.com/gcuisinier/jenv.git ~/.jenv
```

tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Some of my common configs:
```
cd ~

mv .gitconfig .gitconfig.backup
ln -s .espresso/.gitconfig .gitconfig

mv .vimrc .vimrc.backup
ln -s .espresso/.vimrc .vimrc

mv .gvimrc .gvimrc.backup
ln -s .espresso/.gvimrc .gvimrc

mv .tmux.conf .tmux.conf.backup
ln -s .espresso/.tmux.conf .tmux.conf

mv .zshrc .zshrc.backup 
ln -s .espresso/.zshrc .zshrc
```

Haskell
http://www.stephendiehl.com/posts/vim_haskell.html
