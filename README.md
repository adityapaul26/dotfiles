<div align="center">

# 🌌 Aditya's Dotfiles

### *A modern, fluid, and Material Design-inspired Wayland desktop setup*

[![OS: Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![WM: Hyprland](https://img.shields.io/badge/WM-Hyprland-39A7AC?style=for-the-badge&logo=hyprland&logoColor=white)](https://hyprland.org/)
[![UI: ChillPill Shell](https://img.shields.io/badge/UI-ChillPill%20Shell-7AA2F7?style=for-the-badge&logo=gnome-terminal&logoColor=white)](https://github.com/LUCKYS1NGHH/ChillPill-Shell)
[![Shell: Fish](https://img.shields.io/badge/Shell-Fish-00A6FF?style=for-the-badge&logo=fish&logoColor=white)](https://fishshell.com/)
[![Terminal: Kitty](https://img.shields.io/badge/Terminal-Kitty-FC5656?style=for-the-badge&logo=kitty&logoColor=white)](https://sw.kovidgoyal.net/kitty/)
[![Editor: Neovim](https://img.shields.io/badge/Editor-Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)](https://neovim.io/)
[![Theming: Matugen](https://img.shields.io/badge/Theming-Matugen%20MD3-FF79C6?style=for-the-badge&logo=material-design&logoColor=white)](https://github.com/InSyncWithQueries/matugen)

<br/>

<p align="center">
  <img src="./2026-02-20-193343_hyprshot.png" alt="Hyprland Desktop Workspace" width="49%" />
  <img src="./2026-07-11-003429_hyprshot.png" alt="Launcher & Visual Styling" width="49%" />
</p>

</div>

---

## 🚀 Overview

Welcome to my personal **dotfiles**! This repository houses the configuration for my daily driver Arch Linux workstation. It features a heavily customized **Hyprland** environment built for aesthetics, snappy workflows, and seamless dynamic Material You (MD3) theming.

> [!IMPORTANT]
> ### 💊 Status Bar & Desktop Shell Transition
> I have migrated my primary desktop shell and status bar to **[ChillPill Shell](https://github.com/LUCKYS1NGHH/ChillPill-Shell)** (`chillpill-shell`), an interactive Quickshell-powered UI providing dynamic top pill widgets, control center, clipboard history viewer, and mini-dashboard.
>
> 💡 **Prefer Waybar?** My complete and battle-tested **Waybar + SwayNC** configuration is still maintained and preserved inside [`.config/waybar`](file:///home/aditya/dotfiles/.config/waybar) and [`.config/swaync`](file:///home/aditya/dotfiles/.config/swaync) for anyone who wants a traditional status bar experience.

---

## ✨ Features

- 💊 **ChillPill Shell Experience**:
  - Interactive top pill modules: battery, volume, workspaces, network, clock, and weather.
  - Built-in QuickShell IPC triggers for the **App Launcher**, **Control Center**, **Mini Dashboard**, **Cliphist Clipboard Manager**, and **Wallpaper Switcher**.
- 🌈 **Dynamic Material Design 3 Theming**:
  - Powered by **Matugen** and `swww` / `awww`. System colors dynamically extract from your wallpaper across terminal emulators, Hyprland borders, and app themes.
- 🪟 **Modern Modular Hyprland**:
  - Configured with modular **Lua** (`hyprland.lua` + `.config/hypr/lua/`) for clean structure and instant reloads.
  - Smooth spring bezier curves, fluid window opening/closing animations, rounded corners, subtle shadows, and x-ray blur.
  - Scrolling window layout for natural multi-tasking.
- ⚡ **Fish Shell + Starship Prompt**:
  - Modular `conf.d/` configuration (`aliases`, `bindings`, `prompt`, `env`, `conda`).
  - Interactive abbreviations (`abbr`) for instant command expansions without alias overhead.
  - Custom Fastfetch startup banners with ASCII art presets.
- 🛠️ **Power User Tools & Multimedia**:
  - **Neovim (LazyVim)** configured for a full IDE coding experience.
  - **GPU Screen Recorder (`gsr`)**: Fast hardware-accelerated screen capture and instant replays (10s, 30s, 60s clips).
  - **Dual File Managers**: Blazing fast terminal navigation with **Yazi** and **Fyzenor**, plus **Dolphin** for GUI tasks.
  - **Tmux**: Persistent terminal sessions with sleek custom layouts.
  - **Cava**: Audio spectrum visualizer with custom shaders.

---

## 🛠️ Software Stack

| Component | Software | Description | Status |
| :--- | :--- | :--- | :--- |
| **Window Manager** | [Hyprland](https://hyprland.org/) | Dynamic Wayland compositor (Lua-configured) | **Active** |
| **Desktop Shell** | [ChillPill Shell](https://github.com/LUCKYS1NGHH/ChillPill-Shell) | Modern interactive Quickshell bar & widgets | **Primary** |
| **Status Bar (Fallback)**| [Waybar](https://github.com/Alexays/Waybar) | Highly customized CSS-styled status bar | *Preserved* |
| **Terminal Emulator** | [Kitty](https://sw.kovidgoyal.net/kitty/) & [Foot](https://codeberg.org/dnkl/foot) | GPU-accelerated & lightweight Wayland terminals | **Active** |
| **Shell** | [Fish](https://fishshell.com/) & [Starship](https://starship.rs/) | Modular shell with intelligent prompt | **Active** |
| **Editor** | [Neovim](https://neovim.io/) (LazyVim) | Extensible, modern modal text editor | **Active** |
| **Theming Engine** | [Matugen](https://github.com/InSyncWithQueries/matugen) | Material You (M3) color generator | **Active** |
| **Screen Recorder** | [GPU Screen Recorder](https://git.dec05eba.com/gpu-screen-recorder/about/) | Low-overhead capture & instant replay buffer | **Active** |
| **File Managers** | [Yazi](https://github.com/sxyazi/yazi) / [Fyzenor](https://github.com/adityapaul26/dotfiles) / Dolphin | Terminal & GUI file exploration | **Active** |
| **Lockscreen & Idle** | [Hyprlock](https://github.com/hyprwm/hyprlock) & [Hypridle](https://github.com/hyprwm/hypridle) | Dynamic lockscreen with music widget support | **Active** |
| **Notification Center**| [ChillPill](https://github.com/LUCKYS1NGHH/ChillPill-Shell) / [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) | Wayland notification stack & control panel | **Active** |
| **Audio Visualizer** | [Cava](https://github.com/karlstav/cava) | Audio visualizer with custom shaders | **Active** |

---

## ⌨️ Keybindings

The <kbd>SUPER</kbd> key (<kbd>Windows</kbd> key) is the primary modifier across the entire environment.

### 💊 ChillPill Shell & Desktop Controls
| Keybinding | Action |
| :--- | :--- |
| <kbd>SUPER</kbd> + <kbd>R</kbd> | Toggle ChillPill App Launcher |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>V</kbd> | Toggle ChillPill Cliphist Clipboard History |
| <kbd>SUPER</kbd> + <kbd>X</kbd> | Toggle ChillPill Control Center |
| <kbd>SUPER</kbd> + <kbd>B</kbd> | Toggle ChillPill Mini Dashboard |
| <kbd>SUPER</kbd> + <kbd>W</kbd> | Toggle ChillPill Wallpaper Switcher |

### 🪟 Window Management & Navigation
| Keybinding | Action |
| :--- | :--- |
| <kbd>SUPER</kbd> + <kbd>Q</kbd> | Launch Terminal (Kitty) |
| <kbd>SUPER</kbd> + <kbd>E</kbd> | Open File Manager (Dolphin) |
| <kbd>SUPER</kbd> + <kbd>C</kbd> | Close Active Window |
| <kbd>SUPER</kbd> + <kbd>V</kbd> | Toggle Floating Window Mode |
| <kbd>SUPER</kbd> + <kbd>P</kbd> | Toggle Pseudo Tiling |
| <kbd>SUPER</kbd> + <kbd>M</kbd> | Exit Hyprland Session |
| <kbd>SUPER</kbd> + <kbd>Arrow Keys</kbd> | Move Focus (Left, Right, Up, Down) |
| <kbd>SUPER</kbd> + <kbd>1</kbd>–<kbd>0</kbd> | Switch to Workspace `1`–`10` |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>1</kbd>–<kbd>0</kbd> | Move Active Window to Workspace `1`–`10` |
| <kbd>SUPER</kbd> + <kbd>S</kbd> | Toggle Special Workspace (Scratchpad) |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>S</kbd> | Move Window to Special Workspace |
| <kbd>SUPER</kbd> + <kbd>Mouse Scroll</kbd> | Cycle Through Workspaces |
| <kbd>SUPER</kbd> + <kbd>LMB</kbd> (Drag) | Move Window |
| <kbd>SUPER</kbd> + <kbd>RMB</kbd> (Drag) | Resize Window |

### 🎥 Media, Screen Recording & Utilities
| Keybinding | Action |
| :--- | :--- |
| <kbd>PRINT</kbd> | Screenshot active window (`hyprshot`) |
| <kbd>SHIFT</kbd> + <kbd>PRINT</kbd> | Screenshot selected region (`hyprshot`) |
| <kbd>SUPER</kbd> + <kbd>G</kbd> | Toggle GPU Screen Recorder |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>G</kbd> | Toggle GPU Screen Recorder with Microphone |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>G</kbd> | Pause GPU Screen Recorder |
| <kbd>SUPER</kbd> + <kbd>F8</kbd> | Save Instant Replay (Past 10 seconds) |
| <kbd>SUPER</kbd> + <kbd>F9</kbd> | Save Instant Replay (Past 30 seconds) |
| <kbd>SUPER</kbd> + <kbd>F10</kbd> | Save Instant Replay (Past 60 seconds) |
| <kbd>XF86AudioRaiseVolume</kbd> | Volume Up (`wpctl` / `swayosd`) |
| <kbd>XF86AudioLowerVolume</kbd> | Volume Down (`wpctl` / `swayosd`) |
| <kbd>XF86AudioMute</kbd> | Mute Audio Sink |
| <kbd>XF86MonBrightnessUp</kbd> / <kbd>XF86MonBrightnessDown</kbd> | Adjust Screen Brightness (`brightnessctl`) |

---

## 📁 Repository Structure

```text
.
├── .config/
│   ├── chillpill-shell/  # Modern ChillPill Shell configuration (Pills, Widgets, Controls)
│   ├── waybar/           # Classic Waybar status bar configuration, scripts & styles (Preserved)
│   ├── hypr/             # Hyprland setup (modular hyprland.lua, keybinds, animations, look & feel)
│   ├── hyprlock/         # Hyprlock configs, layouts, music widgets & scripts
│   ├── fish/             # Modular Fish configuration (conf.d: aliases, bindings, prompt, env)
│   ├── kitty/            # Kitty terminal styles, font configs & color schemes
│   ├── foot/             # Lightweight Foot terminal config
│   ├── matugen/          # Material You / MD3 dynamic color generation templates
│   ├── nvim/             # Full Neovim configuration (LazyVim based)
│   ├── rofi/             # Rofi menus & application launcher themes
│   ├── swaync/           # Sway Notification Center configs & CSS styling
│   ├── yazi/             # Yazi blazing fast terminal file manager
│   ├── fyzenor/          # Fyzenor file manager configuration & category themes
│   ├── fastfetch/        # Fastfetch layouts, ASCII art & presets
│   ├── cava/             # Cava audio visualizer shaders & configurations
│   ├── bimagic/          # Bimagic widget configurations
│   ├── wlogout/          # Wlogout power menu layout & icons
│   └── starship.toml     # Cross-shell prompt customization
├── tmux/                 # Tmux configuration & keybindings
├── .zshrc                # Fallback / legacy Zsh configuration
└── README.md             # Repository documentation
```

---

## 📥 Installation & Deployment

### 1. Clone the Repository
```bash
git clone https://github.com/adityapaul26/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Deploy Using GNU Stow *(Recommended)*
This repository is organized to be deployed seamlessly with [GNU Stow](https://www.gnu.org/software/stow/):

```bash
# From within ~/dotfiles
stow .
```

*Alternatively, copy configs manually:*
```bash
cp -r ~/dotfiles/.config/* ~/.config/
cp ~/dotfiles/.zshrc ~/.zshrc
```

### 3. Dynamic Theming with Matugen
Generate your initial color palettes across the system using Matugen:
```bash
# If using ChillPill Shell:
qs ipc -p /usr/share/chillpill-shell call wallpaperSwitcher toggle

# Or cycle wallpapers & themes via Waybar script:
~/.config/waybar/change_theme.sh
```

---

## 🤝 Acknowledgements & Credits

- [Hyprland](https://hyprland.org/) by Vaxry and the Hyprland team
- [ChillPill Shell](https://github.com/LUCKYS1NGHH/ChillPill-Shell) for the desktop shell & dynamic widgets
- [Matugen](https://github.com/InSyncWithQueries/matugen) for Material You dynamic theming
- [LazyVim](https://www.lazyvim.org/) for the Neovim starter configuration
- [Waybar](https://github.com/Alexays/Waybar) & [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) for classic status bar & notification tooling

---

<div align="center">
  <sub>Maintained with ❤️ by <a href="https://github.com/adityapaul26">Aditya Paul</a></sub>
</div>

