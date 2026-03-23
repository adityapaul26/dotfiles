# Hyprland Configs 🚀

Welcome to my personal Arch + Hyprland configuration repository. This setup is built for a clean, modern, and highly functional Wayland-based desktop experience on Linux.

![Hyprland](https://img.shields.io/badge/WM-Hyprland-blue?style=for-the-badge&logo=arch-linux)
![Shell](https://img.shields.io/badge/Shell-Zsh-orange?style=for-the-badge&logo=zsh)
![Terminal](https://img.shields.io/badge/Terminal-Kitty-red?style=for-the-badge&logo=kitty)
![Editor](https://img.shields.io/badge/Editor-Neovim-green?style=for-the-badge&logo=neovim)

## ✨ Features

- **Dynamic Theming**: Integrated with **Matugen** and `swww` for Material You-style color generation. 
    - Use the **arch logo** in the Waybar or run `~/.config/waybar/change_theme.sh` to cycle wallpapers from `~/walls/` and regenerate system-wide colors automatically.
- **Eye Candy**: Optimized blur, rounded corners, and smooth animations using Hyprland's native effects.
- **Custom Status Bar**: Highly customized **Waybar** with:
    - Custom workspace icons.
    - Dynamic network and bluetooth status.
    - Clickable modules for volume and theme switching.
- **Productivity & Utilities**: 
    - **Neovim** (LazyVim based) for an IDE-like experience.
    - **Tmux** for terminal multiplexing.
    - **SwayNC** for a modern notification center.
    - **Battery Alert Script**: Automatic critical notifications when battery drops below 15%.
- **Audio Visuals**: **Cava** configured with custom shaders for aesthetic music visualization.

## 🛠️ Components

| Component | Software |
| :--- | :--- |
| **Window Manager** | [Hyprland](https://hyprland.org/) |
| **Status Bar** | [Waybar](https://github.com/Alexays/Waybar) |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) |
| **Shell** | Zsh + [Starship](https://starship.rs/) |
| **Application Launcher** | [Rofi](https://github.com/davatorium/rofi) (Wayland fork) |
| **Notifications** | [SwayNC](https://github.com/ErikReider/SwayNotificationCenter) |
| **Locker / Idle** | Hyprlock & Hypridle |
| **Wallpaper & Effects** | [Swww](https://github.com/L_S_D/swww) & [Matugen](https://github.com/InSyncWithQueries/matugen) |
| **File Manager** | Dolphin |
| **Audio Visualizer** | Cava |
| **OSD Control** | SwayOSD |

## ⌨️ Keybindings

The `SUPER` key is the main modifier.

- `SUPER + Q`: Open Terminal (Kitty)
- `SUPER + E`: File Manager (Dolphin)
- `SUPER + R`: App Launcher (Rofi)
- `SUPER + C`: Close Active Window
- `SUPER + M`: Exit Hyprland
- `SUPER + V`: Toggle Floating
- `SUPER + X`: Notification Center
- `PRINT`: Screenshot (Window)
- `SHIFT + PRINT`: Screenshot (Region)
- `SUPER + [1-0]`: Switch Workspaces

## 📁 Repository Structure

```text
.
├── hypr/           # Hyprland, Hyprlock, Hypridle, Hyprpaper
├── waybar/         # Status bar config & custom scripts
├── kitty/          # Terminal emulator styles
├── matugen/        # Material You color templates
├── nvim/           # Neovim (LazyVim) setup
├── rofi/           # Application launcher themes
├── swaync/         # Notification center config
├── wlogout/        # Logout menu icons and style
├── cava/           # Audio visualizer shaders and config
└── .zshrc          # Shell configuration
```

## 🚀 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/hyprland-configs.git ~/.config/hyprland-configs
   ```

2. **Install Dependencies**:
   Ensure you have the software listed in the [Components](#-components) section installed.

3. **Apply Configs**:
   Link or copy the directories to your `~/.config/` folder.
   ```bash
   cp -r ~/.config/hyprland-configs/* ~/.config/
   ```

4. **Matugen Templates**:
   The `matugen` folder contains templates to sync colors across apps. Run matugen on your wallpaper to generate the `colors.conf` files.

## 📸 Screenshots

<image src="./2026-02-20-193343_hyprshot.png"/>

---

