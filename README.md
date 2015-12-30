dotfiles
==============================
This dotfiles repo organize my dotfiles, and make it easir to manage them.

Usage
-----
#### download repository
```
git clone git@github.com:peco8/dotfiles.git
```

#### execute start up script
```
cd dotfiles
./start_up.sh
```
#### add plugins
```
vim ./.vim/userautoload/_neobundle.vim
```
And then add plugins you want to install
```

" My Bundles here:

" ------ For NerdTree
NeoBundle 'scrooloose/nerdtree'
.
.
.
```

#### configure plugins
```
vim ./.vim/userautoload/for_plugins.vim
```
#### configure vim ( like editing .vimrc )
```
vim ./.vim/userautoload/basic.vim
```


License and Authors
-------------------
Authors: Toshiki Inami

