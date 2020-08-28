My Environment
==============

## Requirements

[![Fedora Logo](https://raw.githubusercontent.com/diegorubin/environment/master/doc/fedora_logo.png)](https://getfedora.org/)
[![Ansbible Logo](https://raw.githubusercontent.com/diegorubin/environment/master/doc/ansible_logo.png)](https://www.ansible.com/)

This project uses ansible to make configurations.

## Screenshots

![NeoVim](https://raw.githubusercontent.com/diegorubin/environment/master/screenshots/nvim.png)

![Conky](https://raw.githubusercontent.com/diegorubin/environment/master/screenshots/conky.png)


## Execution

```
sudo ansible-pull -e user=<user> -e destination=<local dir> -e theme=default -e main_monitor=HDMI-0 -U https://github.com/diegorubin/environment.git
```

## Content

### TODO

- [Ubuntu] Install ripgrep

### Done

- NeoVim (with plug)
- i3 gaps (with compton support)
- polybar (theme from https://github.com/adi1090x/polybar-themes)
- termite
- zsh (with oh-my-zsh)
- Dunst
- Conky

### WIP

- Mopidy
- neovim-gtk

## Sources

- Polybar theme base from [https://github.com/adi1090x/polybar-themes](https://github.com/adi1090x/polybar-themes)
- Rofi themes from [https://github.com/ntcarlson/dotfiles](https://github.com/ntcarlson/dotfiles)

### Fonts

- [https://github.com/belluzj/fantasque-sans](https://github.com/belluzj/fantasque-sans)

