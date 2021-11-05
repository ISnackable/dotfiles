# dotfiles

This is my personal collection of configuration files. Here are some details about my setup:

- **WM**: [AwesomeWM](https://github.com/awesomeWM/awesome/)
- **OS**: Arch Linux
- **Shell**: [zsh](https://wiki.archlinux.org/index.php/Zsh/)
- **Terminal**: [alacritty](https://github.com/alacritty/alacritty/)
- **Editor**: [Neovim](https://github.com/neovim/neovim/)
- **File Manager**: [Thunar](https://git.xfce.org/xfce/thunar/)
- **Launcher**: [rofi](https://github.com/davatorium/rofi/)
- **Browser**: Firefox

For installation or more information, please refer to the Wiki page.

## AwesomeWM configuration: File structure

After setting up my AwesomeWM configuration, inside `~/.config/awesome` you will find the following:

- 🔧 `rc.lua`

  The main configuration file which binds everything together.

  This file allows you to set user preferences, choose themes, configure default layouts for each tag, window rules and more.
  It is also responsible for initializing all necessary desktop components.

- ⌨️ `keys.lua`

  It initializes global and client keybinds.
  In addition, it defines what mouse clicks do on windows, window titlebars or the desktop.

- 👓 `ui.lua`

  Handles the client/windows appearance.

- 🦯 `bar.lua`

  It handles the taskbar, including creating of widgets such as the battery widgets.

- 📝 `menu.lua`

  Provides the right click menubar.

- 📐 `layout.lua`

  Provides all titled layouts.

- 📚 `helpers.lua`

  Provides various uncategorized helper functions to make our life easier and our code cleaner.

- 🐛 `error_handling.lua`

  Handles any errors in the configuration files, fallback to default configuration and notify the user.

- 🎨 `themes` directory

  Here you can find a directory for each available theme.

  Such a directory should include at least a `theme.lua` and optionally icons, wallpaper, and whatever asset you need that is theme-specific.
  The `theme.lua` file usually sets colors, sizes and positions of various elements.

- 🧰 `modules` directory: Contains widgets that usually take up more than 50 lines of code.

  Widgets display information in visual form (text, images, progress bars).
  Without them, all desktop elements would just be empty boxes.
  They are used by the desktop components defined inside the `elemental` directory.
  Widgets can be defined in any file but I prefer to separate a big widget (with a lot of logic) from the element I am using it in.

## Keybinds

I use <kbd>super</kbd> AKA Windows key as my main modifier.

#### Keyboard

| Keybind                      | Action                                           |
| ---------------------------- | ------------------------------------------------ |
| <kbd>super + enter</kbd>     | Spawn terminal                                   |
| <kbd>super + [1-0]</kbd>     | View tag AKA change workspace (for you i3 folks) |
| <kbd>super + f</kbd>         | Toggle fullscreen                                |
| <kbd>super + m</kbd>         | Toggle maximize                                  |
| <kbd>super + n</kbd>         | Minimize                                         |
| <kbd>super + shift + n</kbd> | Restore minimized                                |

_... And many many more._

#### Mouse on the desktop

| Mousebind     | Action                |
| ------------- | --------------------- |
| `left click`  | Interact with clients |
| `right click` | Open main menu        |

#### Mouse on window titlebars

| Mousebind            | Action          |
| -------------------- | --------------- |
| `left click`         | Focus and raise |
| `left click (drag)`  | Move            |
| `right click (drag)` | Resize          |

## Acknowledgement

Arch Linux dotfiles inspired by [Elena](https://github.com/elenapan), [arndtphillip](https://github.com/arndtphillip) & [JavaCafe01](https://github.com/JavaCafe01/awedots).
https://github.com/rickellis/ArchMatic
https://github.com/ChrisTitusTech/ArchTitus
