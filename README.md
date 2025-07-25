# Dotfiles

These are my custom shell aliases and settings for a more personalized experience on my Arch Linux system.

## Installation

To install the dotfiles, run the following command:

```bash
bash <(curl -s https://raw.githubusercontent.com/Z3r0xF/.dotfiles/refs/heads/master/install.sh)

```

## ZSH:
    - ".aliases" and ".functions" includes custom aliases and functions

## Konsole Settings

- **Random Logos**: Display random logos in the terminal using **fastfetch**, which has been replaced by our custom alias. Create & Add your Images in $HOME/Pictures/FastFetch/
- **Open Split Session**: Use **SHIFT + CTRL + Return** to open a split session in the current tab.
- **Close Session**: Close the current session with **SHIFT + CTRL + W**.
- **Change Focus of Tiled Sessions**:
  - **↑ SHIFT + CTRL + Up**: Move focus to the session above
  - **↓ SHIFT + CTRL + Down**: Move focus to the session below
  - **← SHIFT + CTRL + Left**: Move focus to the session on the left
  - **→ SHIFT + CTRL + Right**: Move focus to the session on the right

## Managing Changes

We can easily manage changes using symlinks created by **stow**, allowing us to focus only on our `.dotfiles` directory. When we make new changes, we can commit and push them from this folder. To update our settings, we can use:
```bash
git pull
```
