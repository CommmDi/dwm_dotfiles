# My dwm dotfiles for fedora linux
### **Installation**:
1. Install dependencies: ```sudo dnf install -y dmenu micro brightnessctl pavucontrol scrot feh alacritty fish picom fastfetch jetbrains-mono-fonts slock Thunar @development-tools gcc make xorg-x11-xinit xorg-x11-xauth libX11-devel libXft-devel libXinerama-devel xorg-x11-server-Xorg xsetroot fontawesome-6-free-fonts```
2. Clone repo: ```git clone https://github.com/Commmdi/dwm_dotfiles```
3. Remove README.md, screenshots/, and .git/ from dwm_dotfiles directory: ```rm -rf screenshots/ && rm -rf .git/ && rm README.md```
4. Move everything from dwm_dotfiles directory to home directory: ```mv * ~/ ```
5. Compile dwm in ~/.config/dwm/ directory
6. Change your default shell to fish: ```chsh -s /usr/bin/fish```
7. Reboot
### **Screenshots**:
![image](https://github.com/CommmDi/dwm_dotfiles/blob/main/screenshots/1.png)
![image](https://github.com/Commmdi/dwm_dotfiles/blob/main/screenshots/2.png)
![image](https://github.com/Commmdi/dwm_dotfiles/blob/main/screenshots/3.png)
