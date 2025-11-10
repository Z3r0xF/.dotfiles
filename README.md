# Dotfiles

These are my custom shell aliases and settings for a more personalized experience on my Arch Linux system.

## Installation

To install the dotfiles and the packages listed in the `packages` file, run the following command:

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

## Defining Shortcuts Manually for "SelfHostScreenshot"

To manually define shortcuts in KDE Plasma, refer to the following steps:
    
    Open System Settings.
    
    Go to Input Devices > Keyboard > Shortcuts.
    
    Select the Commands category or create a new one.
    
    Click the "+" button to add a new shortcut:
        For shs_flameshot_upload:
            Command: $HOME/.dotfiles/scripts/SelfHostScreenshot/flameshot/shs_flameshot_upload.sh
            Shortcut: Set to Meta+C.
        For shs_spectacle_video:
            Command: $HOME/.dotfiles/scripts/SelfHostScreenshot/spectacle/shs_spectacle_video.sh
            Shortcut: Set to Meta+R.
    
# Software Packages Overview:

<details>
<summary>Development Tools</summary>

Development tools for programming and software development

| Package | Description |
|---------|-------------|
| code    | Code editor |
| git     | Version control system for software development |
| kate    | Text editor for programming |
| pyenv   | Python version manager |

</details>

<details>
<summary>System Tools</summary>

System tools for managing systems and processes

| Package      | Description                             |
|--------------|-----------------------------------------|
| firejail     | Security tool for process isolation     |
| flatpak      | Package manager for applications        |
| libvirt      | Library for managing virtual machines    |
| qemu-full    | Emulator for virtual machines           |
| stow         | Management of symbolic links            |
| virt-manager  | Management of virtual machines          |

</details>

<details>
<summary>Productivity Tools</summary>

Productivity tools for work and organization

| Package  | Description                     |
|----------|---------------------------------|
| feh      | Image viewer                    |
| htop     | System monitoring tool          |
| iftop    | Network monitoring tool         |
| ncdu     | Disk usage tool                 |
| ripgrep  | Search tool for text files      |
| yt-dlp   | YouTube video downloader        |
| zsh      | Shell for the command line      |

</details>

<details>
<summary>Multimedia</summary>

Media players and tools

| Package          | Description               |
|------------------|---------------------------|
| vlc              | Media player              |
| vlc-plugins-all  | Extensions for VLC        |

</details>

<details>
<summary>Fonts and Design</summary>

Fonts and design tools for the command line

| Package            | Description                          |
|--------------------|--------------------------------------|
| powerline          | Tool for customizing the command line |
| ttf-hack-nerd     | Nerd font for the command line       |

</details>

<details>
<summary>Network and Security</summary>

Network and security tools

| Package      | Description         |
|--------------|---------------------|
| opensnitch   | Firewall tool       |

</details>

<details>
<summary>Miscellaneous</summary>

Miscellaneous applications

| Package      | Description               |
|--------------|---------------------------|
| ark          | Archive manager           |
| fastfetch    | System information tool    |
| konsole      | Terminal emulator         |

</details>
Defining Shortcuts Manually

