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

    ```
    npm config set proxy http://127.0.0.1:8123
    ```

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

## Install Markdown-Preview

    npm -g install instant-markdown-d

## Install FZF

* Install FZF

    ```vim
    brew install fzf
    ```

* Install XQuartz on macOS (**Not useful in MacVim)

## Install Watchman for CommandT

* Compile Command-T

    ```vim
    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make
    ```

* Install Watchman

    ```vim
    brew install watchman
    ```

## Install plugins for **React Native**

* Install plugins
    - **mxw/vim-jsx**
    - **pangloss/vim-javascript**

* Disable jsx snytax hilight in js file
    ```vim
    let g:jsx_ext_required = 0
    ```

* Install for syntastic
    ```bash
    npm install -g eslint
    npm install -g babel-eslint
    npm install -g eslint-plugin-react
    ```

