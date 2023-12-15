<img width=150 height=50 align=right src="https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png">

# My Arch Linux Configs

## Installing

I stole the idea from [ChristianChiarulli](https://github.com/ChristianChiarulli/Machfiles)

You will need `git` and GNU `stow`

Clone into your `$HOME` directory

```bash
git clone git@github.com:DzesenKopeykin/configs.git configs-git
```

Run `stow` to symlink everything

```bash
stow kitty --dir=./stow_dir --target=$HOME
```

