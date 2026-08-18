
# One Dark Pro Theme for Omarchy

![Omarchy One Dark Pro](./assets/title.png)

A One Dark Pro theme for [Omarchy](https://omarchy.org/), inspired by the popular One Dark Pro editor color scheme.

> **Fork note.** This is a fork of [sc0ttman/omarchy-one-dark-pro-theme](https://github.com/sc0ttman/omarchy-one-dark-pro-theme)
> updated for **Omarchy 4**. See [Omarchy 4 changes](#omarchy-4-changes) for what
> differs from upstream.

### Dark:

![Omarchy One Dark Pro Screenshot](./assets/screen1.png)
![Omarchy One Dark Pro Screenshot 2](./assets/screen2.png)

### Prompt:

The [Starship](https://starship.rs) prompt is based off [gruvbox-rainbow Preset](https://starship.rs/presets/gruvbox-rainbow). Currently you will need to copy [starship.toml](./starship.toml) to your `~/.config` folder.

### Font:
I quite enjoy the [SauceCodePro](https://www.nerdfonts.com/font-downloads) Nerd Font

### Tmux:
There is also a One Dark Pro theme for Tmux, available at [tmux-one-dark-pro](https://github.com/odedlaz/tmux-onedark-theme)

## Installation

```bash
omarchy theme install https://github.com/diegonogueira/omarchy-one-dark-pro-theme
```

## Omarchy 4 changes

**Added `colors.toml`.** Omarchy 4 generates most per-app configs from a
semantic palette. Without this file it derives one from `alacritty.toml`, and
the derivation flattens colors: `orange` becomes a copy of the yellow (losing
One Dark Pro's `#d19a66`), `lighter_background` collapses onto `background`,
`light_foreground` onto `foreground`, and `brown` gets synthesized. The palette
feeds `shell.toml` (bar and notifications), `hyprland.lua`, foot, kitty,
ghostty, helix, vscode, obsidian and claude.

**Replaced `hyprland.conf` with `hyprland.lua`.** Omarchy 4 reads Hyprland
config through a Lua API; the old hyprlang file is ignored outright. Both rules
the original carried are preserved: the four-stop border gradient on the active
window and the red border on fullscreen. The gradient only applies as a table —
the `"rgba(..) rgba(..) 90deg"` string form is silently downgraded to a solid
color.

**Fixed `neovim.lua` for live theme switching.** The spec applied the
colorscheme from inside `config = function()`, which only runs when Neovim
starts. Omarchy's hot-reload looks for the colorscheme in a
`{ "LazyVim/LazyVim", opts = { colorscheme = ... } }` entry, so switching to
this theme left Neovim on the previous one until restarted. Now uses `opts` plus
that entry, matching every stock Omarchy theme.

**Dropped `mako.ini`, `waybar.css`, `swayosd.css` and `walker.css.`** Omarchy 4
replaced Mako, Waybar, SwayOSD and Walker with a single Quickshell process; the
four files are dead weight.
