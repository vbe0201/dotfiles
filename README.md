# Dotfiles

These are my important dotfiles.

__There are 3 installation methods:__

- Clone this into your (empty) home folder on a fresh install

- Cherry-pick the ones you like

- Use the `install.sh` script included in this repository

## List of Software

Here's a list of software corresponding to dotfiles available from this repository.

### Editors

- Vim

### WM

- Compton

- i3

- LightDM

### Other

- fontconfig

- highlight

- leafpad

- mpv

- ranger

- URxvt

- youtube-dl

- youtube-viewer

- Zathura

## Miscellaneous notes

- I use Arch btw

- I'm a minimalist

- You may want to have a look at `compton.conf` and play around with various performance improving options

- Remove the plugins `vim-maktaba`, `vim-cmake` and `vim-bazel` from your `.vimrc` if you don't need them

- You may want to change the colors of your URxvt configuration (`.Xdefaults`)

- Yes, I'm a weeb. Make sure to have your own wallpaper stored as `~/.config/wallpaper.png` if you don't want mine

- If you're on a desktop computer, make sure to remove the `battery` section from i3blocks configuration. Without a battery, this looks ugly.

- Pay attention to the fontconfig. I use Hack systemwide. You can get it with `pacman -S ttf-hack`

- `pacman -S maim xclip` for proper screenshotting (see i3 config)

## Contributing

Pull Requests that improve spelling or fix malfunctioning parts of the configurations are totally fine and appreciated.

However, I __won't__ merge Pull Requests that

- add entirely new configs

- or change significant parts, e.g. bindsyms or Vim plugins

because this is a repository dedicated to the dotfiles I use myself.
