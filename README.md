My Environment
==============

## Requirements

[![Fedora Logo](https://github.com/diegorubin/environment/blob/master/doc/fedora_logo.png)](https://getfedora.org/) 
[![Ansbible Logo](https://raw.githubusercontent.com/diegorubin/environment/master/doc/ansible_logo.png)](https://www.ansible.com/)

This project uses ansible to make configurations.

## Screenshots

![NeoVim](https://raw.githubusercontent.com/diegorubin/environment/master/screenshots/nvim.png)

![Conky](https://raw.githubusercontent.com/diegorubin/environment/master/screenshots/conky_ncmpc.png)


## Execution

```
sudo ansible-pull -e user=<user> -e destination=<local dir> -U https://github.com/diegorubin/environment.git
```

## Manual Steps

After running ansible, execute these steps:

- Open nvim and execute: `:PlugInstall` and `:UpdateRemotePlugins`

## Content

### Done

- NeoVim (with plug)
- i3 gaps (with compton support)
- polybar (theme from https://github.com/adi1090x/polybar-themes)
- termite
- zsh (with oh-my-zsh)

### WIP

- Conky
- Dunst
- Mopidy

