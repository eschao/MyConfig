### Plugin

* Structure

    Directory | Function
    --------- | --------
    ~/.vim/colors/ | Color schemes
    ~/.vim/plugin/ | Plugin files which will be run once every time Vim starts
    ~/.vim/ftdetect/ | Filetype detection
    ~/.vim/ftplugin/ | When Vim sets a buffer's filetype to a value it then
looks for a file in ~/vim/ftplugin/ that matches and run
    ~/.vim/indent/ | **indent** files should set options related to indentation
for their filetypes and those options should be buffer-local
    ~/.vim/compiler/ | Should set compiler-related options in the current buffer
based on their names
    ~/.vim/after/ | Will be loaded every time Vim starts but after the files in
~/.vim/plugin/
    ~/.vim/autoload/ | **autoload** is a way to delay the loading of your
plugin's code until it's actually needed
    ~/.vim/doc/ | Documentaion for plugins
