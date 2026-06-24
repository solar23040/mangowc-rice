# 🥭 mangowc-rice

A sleek, minimal, and performance-focused Wayland configuration for the **MangoWC** compositor. This repository houses my personal dotfiles, styling setups, and automated backup/sync utilities.

---

## 🚀 Features

*   **Minimalist Aesthetic:** Focused on clean lines, distraction-free workspaces, and smooth window management.
*   **Wayland Native:** Configured for low-latency window drawing and modern Wayland ecosystem utilities.
*   **Automation-First:** Includes built-in scripts to cleanly back up changes or instantly deploy the configuration on a fresh machine.

---

├── config.conf          # Core MangoWC compositor settings
├── backup_dots.sh       # Automated push script for pushing updates
├── fetch_dots.sh        # Automated bootstrap script for fresh installs
└── README.md            

## 🛠️ Installation

Follow these steps to set up the dependencies and deploy this configuration onto your machine.

### 1. Install Dependencies
Ensure you have `mangowc` and basic Wayland utilities installed on your system. 

If you are running **Arch Linux**, you can build and install MangoWC from the AUR along with Git:
```bash
# Install Git and build tools if missing
sudo pacman -S --needed git base-devel

# Install mangowc using an AUR helper (like yay)
yay -S mangowc-git

curl -sSL [https://raw.githubusercontent.com/solar23040/mangowc-rice/main/fetch_dots.sh](https://raw.githubusercontent.com/solar23040/mangowc-rice/main/fetch_dots.sh) | bash
