<div align="center">
    
```
gabo's repo of
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
```
</div>

![](screenshot.jpg)

A repository to centralize all configuration files my workflow needs to behave the way It should.

Here you will find **shell** utilities, ui/**theming** configurations, and some applications **config files**.

## ℹ️ Details

- **Shell**: ZSH
- **WM**: dwm
- **Theme**: oomox-wildBerries
- **Icons**: papirus-wilBerries
- **Terminal**: xfce4-terminal
- **Terminal Font**: JetBrains Mono NL Medium 12

<a name="dependencies"></a>

## 📦 Dependencies

|  Dependency  |                     Description                     |
| :----------: | :-------------------------------------------------: |
|    `dwm`     |                   Window manager                    |
|   `dmenu`    |                Application launcher                 |
| `xwallpaper` | Fast image viewer used as wallpaper setting utility |
|    `sxiv`    |   image visualizer, used for background settings    |

## ⚙️ Instalation

My dotfiles are installed through dotbot, so you just need to `./install`

This script creates a symlink of each dotfile to its expected location on the system. Before instaling, check each linking target on `install.conf.yaml` and tweak them to better suit your system.

More about dotbot [here](https://github.com/anishathalye/dotbot)

## 🗃️ What's inside

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

### - `config` files

### - `shell` files

### - `ui` files

## ↗️ Other repositories to check

- [gbgabo/scripts](https://github.com/gbgabo/scripts) - personal scripts for volume control, brightness;
- [gbgabo/dwm](https://github.com/gbgabo/dwm) - own fork of dwm, including many useful patches and own color theme;
- [gbgabo/dmenu](https://github.com/gbgabo/dmenu) - dmenu fork with center patch and own color theme;
- [TinyTools](https://github.com/TinyToolSH) - mainly [tmenu](https://github.com/TinyToolSH/tmenu) and [tsearch](https://github.com/TinyToolSH/tsearch), both used as dmenu wrappers for custom menus and search;
- [gbgabo/wallpapers](https://github.com/gbgabo/wallpapers) - dedicated repository for all my wallpapers;

---

Repository's README highly inspired by [WillPower3309/awesome-dotfiles](https://github.com/WillPower3309/awesome-dotfiles), check out the awesome work of his.
