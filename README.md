# bash-customization
Basic bash customizations I use to enhance my desktop Linux workflow

## Purpose
This repository contains files I use to customize my bash experience. It is unlikely that the customizations--without significant modification--will be useful to anyone else. Nevertheless, I have made this a repository public on the chance that others might find some useful ideas for creating their own bash customizations. The custom aliases and keyboard modifications effected by these files work great *for me* on my *Debian based* installation. While you are welcome to use any files within this repository without modification, you will probably wind up with confusion in your terminal at best, and serious malfunctions at worst. Use at your own risk.

## Contents
At present, this repository contains:
- bash_aliases
- Xmodmap

### bash_aliases
The **bash_aliases** file is installed as a hidden file in one's home directory: `/home/$USER/.bash_aliases`

Ensure that your .bashrc file calls .bash_aliases by including (or confirming the inclusion of) code similar to the following:

    if [ -f ~/.bash_aliases ]; thenThis file is installed as a hidden file in the home directory: `/home/$USER/.Xmodmap`
         . ~/.bash_aliases
    fi

Most--but not all--of the Linux distributions I have used are set up out of the box to look for a `.bash_aliases` file. Certainly, all the Debian and Debian based distros I've ever used work this way. Others may require a tweak to the `.bashrc` or `.profile` code. 

As an alternative, you could include all the alias definitions directly in the `.bashrc` file. I have done this from time to time, especially on Fedora and Arch distros. It seems to make no difference to performance. The advantages, perhaps, to using `.bash_aliases` are: (1) all aliases are contained in a single location, which makes editing simpler; and (2) an editing mistake in `.bash_aliases` is less likely to work major mischief than a mistake in `.bashrc`.

After installing `.bash_aliases`, do `~$ source .bashrc`. Alternatively, you may simply close and reopen your terminal emulator. This is necessary because, generally speaking, your bash only reads its configuration files when the terminal first starts. 

## Xmodmap
I use this Xmodmap file to convert my Right-Alt key to a **Hyper** key. As an Emacs enthusiast, and as someone who never uses the Right-Alt key for its intended purpose, I find it convenient to have another modifier key for various Emacs bindings. It is especially convenient to have a Hyper key, because no other keyboard shortcuts defined in the desktop environment, file manager, or elsewhere are going to conflict. The Hyper key is all mine!

This file is installed as a hidden file in the home directory: `/home/$USER/.Xmodmap`

To make the keyboard modification work, you must execute: `~$ xmodmap .Xmodmap`. I have this command in my startup items, so the Hyper key mod is automatically ready to go every time I restart.

**NOTE:** This is the way I get my Hyper key on distributions like Linux Mint Debian Edition. On Fedora and Arch, I do not use this method. For those distros, I modify several files found in the `/usr/share/X11/xkb/` path, which then allows me to select the desired keyboard options via Gnome's GUI settings. Contact me if you are interested in the details. 
