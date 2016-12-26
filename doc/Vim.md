## Install Vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Install YouCompleteMe

* Install **Go** if need:

    ```
    brew install go
    ```

* Install **NPM** for JavaScript:
  - Download from: https://nodejs.org/en/download/
  - Configure **polipo** proxy for NPM
  - Run
  
    ```
    npm install npm@latest -g
    ```

* Compile YCMD for C-family, Go and JavaScript

    ```
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer --gocode-completer --tern-completer
    ```
    
## Install **ctags**
    
    brew isntall ctags

## Install **Ack**

    brew install ack

## Install Java plugins

    Plugin "hsanson/vim-android"


