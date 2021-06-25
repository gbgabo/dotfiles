# dotfiles

A repository to centralize all configuration files my workflow needs to behave the way It should.

Here you will find **shell** utilities, ui/**theming** configurations, and some applications **config files**.

## instalation

My dotfiles are installed through dotbot, so you just need to `./install`

This script creates a symlink of each dotfile to its expected location on the system. Before instaling, check each linking target on `install.conf.yaml` and tweak them to better suit your system.

More about dotbot [here](https://github.com/anishathalye/dotbot)

## what's inside

```
.dotfiles
├── config                      # general applications config files
│   ├── dunstrc
│   ├── i3
│   │   ├── config
│   │   └── config_original
│   ├── neovim
│   │   └── init.vim
│   ├── vimrc
│   ├── vscodium-settings.json
│   └── Xorg
│       ├── xinitrc
│       └── Xresources
├── shell                       # shell utils for a CLI workflow
│   ├── aliases
│   ├── bashrc
│   ├── functions
│   ├── wild-berries.zsh-theme
│   ├── zprofile
│   └── zshrc
├── ui                          # theming and daily use ui components
│   ├── gtk-themes
│   │   └── oomox-wildBerries       # customized wildBerries gtk theme
│   ├── icons
│   │   ├── default
│   │   └── papirus-wildBerries     # customized wildBerries papirus icons
│   └── tmenus                      # custom quick menus
│       ├── dial.yaml
│       └── focus.yaml
├── gitconfig
├── install
├── install.conf.yaml
└── README.md
```

## Other ricing repositories

### scripts

If you want to check the personal scripts I use in my workflow, there is a dedicated repo for that.

- [gbgabo/scripts](https://github.com/gbgabo/scripts)

### used applications

Other suckless applications I forked to my own needs:

- [gbgabo/dwm](https://github.com/gbgabo/dwm)
- [gbgabo/dmenu](https://github.com/gbgabo/dmenu)

### wallpapers

There is a dedicated repository for that:

- [gbgabo/wallpapers](https://github.com/gbgabo/wallpapers)
