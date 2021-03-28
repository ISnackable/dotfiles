# dotfiles

This is my personal collection of configuration files. Here are some details about my setup:

+ **WM**: [AwesomeWM](https://github.com/awesomeWM/awesome/)
+ **OS**: Arch Linux
+ **Shell**: [zsh](https://wiki.archlinux.org/index.php/Zsh/)
+ **Terminal**: [alacritty](https://github.com/alacritty/alacritty/)
+ **Editor**: [Neovim](https://github.com/neovim/neovim/) 
+ **File Manager**: [Thunar](https://git.xfce.org/xfce/thunar/)
+ **Launcher**: [rofi](https://github.com/davatorium/rofi/)
+ **Browser**: Firefox

## AwesomeWM configuration: File structure

After setting up my AwesomeWM configuration, inside `~/.config/awesome` you will find the following:

+ 🔧 `rc.lua`

   The main configuration file which binds everything together.

   This file allows you to set user preferences, choose themes, configure default layouts for each tag, window rules and more.
   It is also responsible for initializing all necessary desktop components.

+ ⌨️ `keys.lua`

   It initializes global and client keybinds.
   In addition, it defines what mouse clicks do on windows, window titlebars or the desktop.

+ 🎮 `apps.lua`

   Provides functions for *activating* various applications, meaning either spawning them, focusing them or toggling them depending on whether they are currently running or not.

+ 📚 `helpers.lua`

   Provides various uncategorized helper functions to make our life easier and our code cleaner.

+ 🎨 `themes` directory

   Here you can find a directory for each available theme.

   Such a directory should include at least a `theme.lua` and optionally icons, wallpaper, and whatever asset you need that is theme-specific.
   The `theme.lua` file usually sets colors, sizes and positions of various elements.

+ 🖼 `icons` directory

   Here you can find a directory for each available icon theme and an `init.lua` file which initializes the `icons` variables.

   Icons can be images taken from the selected icon theme or text symbols taken from some icon font.

   For example, `icons.image.firefox` can be used to refer to your selected theme's Firefox icon instead of using the full path to the image. This makes it easy to switch between themes.

   Note: Icon themes defined here have nothing to do with your system-wide icon theme.

+ 🎀 `decorations` directory

   In this directory you can find window decoration (titlebar) styles.

   They affect the layout of the titlebar and the titlebar buttons (e.g. close, maximize, minimize).

   Optionally, they may implement more complex decorations, using multiple titlebars around the window to create a certain look (e.g. double borders) or achieve anti-aliased window corners.

   Finally, some clients may have their own special titlebars added to them in order to simulate a custom UI.
   For now, a custom `mpd` UI has been implemented.

   The `decorations` module also includes helper functions that generate titlebar buttons, in case you do not have/want image buttons.

+ 💎 `elemental` directory

   Contains desktop components or *elements* such as bars, sidebars, lock screens and more.
   Elements with multiple available themes have their own directory. For example:

   + In `elemental/bar` you can find a `.lua` file for each available bar or bar group.

      Multiple bars can be created in one file.
      Every bar theme provides the global functions `wibars_toggle()` and `tray_toggle()` which you can bind to any keys you want.

   + In `elemental/sidebar` you can find a `.lua` file for each available sidebar theme.

   + ... And so on.

+ 💬 `notifications` directory

   This directory includes notification daemons that trigger notifications for various desktop events such as volume or brightness change.
   Also it includes notification themes that define the layout of the notification contents.

+ 🍜 `noodle` directory: Contains widgets that usually take up more than 50 lines of code.

   Widgets display information in visual form (text, images, progress bars).
   Without them, all desktop elements would just be empty boxes.
   They are used by the desktop components defined inside the `elemental` directory.
   Widgets can be defined in any file but I prefer to separate a big widget (with a lot of logic) from the element I am using it in.

+ 😈 `evil` directory

   Contains daemons (processes that run in the background) which emit system info.

   They provide an easy way of writing widgets that rely on external information. All you need to do is subscribe to the signal a daemon provides.
   No need to remember which shell command gives you the necessary info or bother about killing orphan processes. Evil takes care of everything.

## Keybinds

I use <kbd>super</kbd> AKA Windows key as my main modifier.

#### Keyboard
| Keybind | Action |
| --- | --- |
| <kbd>super + enter</kbd> | Spawn terminal |
| <kbd>super + [1-0]</kbd> | View tag AKA change workspace (for you i3 folks) |
| <kbd>super + f</kbd> | Toggle fullscreen |
| <kbd>super + m</kbd> | Toggle maximize |
| <kbd>super + n</kbd> | Minimize |
| <kbd>super + shift + n</kbd> | Restore minimized |

*... And many many more.*

#### Mouse on the desktop
| Mousebind | Action |
| --- | --- |
| `left click` | Dismiss all notifications, close sidebar and main menu |

#### Mouse on window titlebars
| Mousebind | Action |
| --- | --- |
| `left click` | Focus and raise |
| `left click (drag)` | Move |
| `right click (drag)` | Resize |

## Acknowledgement

Arch Linux dotfiles inspired by [Elena](https://github.com/elenapan) & [arndtphillip](https://github.com/arndtphillip).
