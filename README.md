
<p align='center'>
<img width="300" height="230" alt="image" src="https://github.com/ductam276/LinuxBSSMacro/blob/main/frosty_bee.png">
</p>
<h1 align='center'>
LinuxBSSMacro - A Fork of [BeeTuxMacro](https://github.com/painvision/BeeTuxMacro) ☃️
</h1>

<p align='center'>
Open source Bee Swarm Simulator macro made for Linux. Now supports every DE/WM, Wayland and X11 🐧 
</p> 

<p align='center'>

<a href="https://wikipedia.org/wiki/Linux">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
</a>

 <a href="https://discord.gg/pAUUYbPqs6">
<img src="https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=Discord&logoColor=white" />  
</a>

  <a href="https://t.me/+gws61dtKyIRlYzky">
<img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white" />  
  </a>

</p>

> [!WARNING]
> If you encounter bugs, open an issue, make a pull request, join our [discord chat](https://discord.gg/pAUUYbPqs6), or [group on Telegram](https://t.me/+gws61dtKyIRlYzky). [🇷🇺/🇺🇸/🇻🇳]

<p align='center'>
<a href="https://github.com/painvision/BeeTuxMacro/blob/main/README_ru.md">
README.md на русском
</a>
</p>
<p align='center'>
<a href="https://github.com/ductam276/LinuxBSSMacro/blob/main/README_vi.md">
README.md Tiếng Việt
</a>
</p>

<h1 align='center'>
Installation
</h1>

Recently, I rewrote whole macro in wtype and wlrctl instead of ydotool, so it would work faster on Wayland. Switch also allowed to macro in background with sandbox.

### Install dependencies

- Arch-based distros:

Install AUR helper (if not installed):

```
sudo pacman -S --needed --noconfirm base-devel git go
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm
```

Run this command:

```
yay -S wlrctl wtype imagemagick bc xorg-xrandr grim yad
```
- Debian-based distros:


```
sudo apt install wtype imagemagick bc xorg-xrandr grim meson ninja scdoc
```

And manually compile wlrctl:

```
git clone https://git.sr.ht/~brocellous/wlrctl
cd wlrctl/
meson setup --prefix=/usr/local build
ninja -C build install
```

### Open a terminal. Clone this repository:

```
git clone https://github.com/ductam276/LinuxBSSMacro
```
### Configuration
Edit `$MACRO_DIR/config.sh` file using your favourite text editor. No GUI, the Linux way to configure your macro

<h1 align='center'>
Setup
</h1>

## Sandbox

If your DE/WM doesn't support `grim` protocols, or if you want to use your macro in background, you can use macro with a "sandbox", so your macro would work as intended

Install dependencies (make sure to install previous):

- Arch-based distros:
```
sudo pacman -S hyprland foot kitty
```
- Debian-based distros:
```
sudo apt install hyprland foot  kitty
```
If Hyprland isn't available in your distro package manager, you can compile it yourself with:

```
sudo apt install -y meson wget build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev libtomlplusplus3 libre2-dev # why use ubuntu at that point
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
```

Next, start config.sh to fill all infomation:
```
bash -c $MACRO_DIR/config.sh
```


After that, start gui.sh to using the macro.
```
bash -c $MACRO_DIR/gui.sh
```

## Native

If your DE/WM does support `grim` protocols, or you just dont wanna use sandbox (if X11 it is -pixel detection things, but +100MB of RAM), you can use macro natively without using the sandbox button



> [!WARNING]
> Your display scaling option MUST be 100%, Roblox on fullscreen and nothing interrupting macro to work

If there are some updates, you can update macro by running this command in macro's directory:

```
git pull
```

<h1 align='center'>
Roadmap
</h1>


#### Features:
- ✅ Works on Wayland natively and X11 with sandbox
- ✅ Macroing in background - sandbox only
- ✅ Auto Claim Hive (can be manual)
- ✅ Auto Sprinkler
- ✅ Auto Dig
- ✅ Convert when full backpack
- ✅ Convert when time exceeded
- ✅ Auto Honey Wreath
- ✅ Auto Kill Mobs
- ✅ Auto Wealth Clock
- ✅ Auto Stockings
- ✅ Auto Find Hive
- ✅ Auto Red/White/Blue boosters
- ✅ Gather Interrupt for individual dispenser
- ✔️ Auto Reconnect - native only ;(

> Planned: ❌ Planters, ❌ More dispensers

#### Fields:
- ✅ Pine Tree Forest
- ✅ Rose Field
- ✅ Pumpkin Field
- ✅ Pineapple Field
- ✅ Strawberry Field

> Planned: ❌ More fields

#### TO DO
- 🗿📌 GUI for hive selection/toggle macro instead of notifications
- 📌❌ Telegram bot hooking
- ❌ Image recognition function
- ❌ Image instability function

# Honorable mention: 
<img width="194" height="259" alt="image" src="https://github.com/user-attachments/assets/4562756a-e6f7-4dc0-9f12-d7c369c71022" />
