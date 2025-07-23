Dotfiles
My custom shell aliases and settings for a more personalized experience of my arch Linux system.
To apply them we need to install stow and run the following command in .dotfiles directory:
"stow konsole zsh" 
stow does create all our symlinks starting from home directory

- ZSH Settings:
    - ".aliases" and ".functions" includes custom aliases and functions
Konsole Settings:
    - Random logos in terminal using fastfetch which has been replaced by our custom alias
    - Open split session in current tab with "SHIFT+CTRL+Return"
    - Close with "SHIFT+CTRL+W"
    - Focus splitted sessions with "SHIFT+CTRL+Up" "SHIFT+CTRL+Down" "SHIFT+CTRL+Left" "SHIFT+CTRL+Right"