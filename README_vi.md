
<p align='center'>
<img width="300" height="230" alt="image" src="https://github.com/ductam276/LinuxBSSMacro/blob/main/frosty_bee.png">
</p>
<h1 align='center'>
LinuxBSSMacro - Một bản sao của <a href="https://github.com/painvision/BeeTuxMacro">BeeTuxMacro</a> ☃️
</h1>

<p align='center'>
Công cụ tự động hoá (Macro) mã nguồn mở cho tựa game Giả lập nuôi ong (Bee Swarm Simulator). Hỗ trợ các môi trường như DE/WM, Wayland và X11 🐧 
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
> Nếu gặp phải lỗi, hãy mở một bản báo cáo lỗi, hãy tạo 1 yêu cầu pull (kéo source) , tham gia với tôi [discord](https://discord.gg/pAUUYbPqs6), hoặc [Telegram](https://t.me/+gws61dtKyIRlYzky). 36 [🇷🇺/🇺🇸/🇻🇳]

</p>
<p align='center'>
<a href="https://github.com/ductam276/LinuxBSSMacro/blob/main/README.md">
README.md
</a>
</p>

<h1 align='center'>
Hướng dẫn cài đặt
</h1>

Hiện tại, tôi đã tái cấu trúc của macro và viết lại một số chức năng, cũng như bổ sung thêm gui để tiện hơn trong việc sử dụng.

### Cài đặt các gói cần thiết

- Bản phân phối dựa trên Arch-based:

Cài đặt AUR helper (Nếu chưa cài):

```
sudo pacman -S --needed --noconfirm base-devel git go
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si --noconfirm
```

Sau đó chạy lệnh này:

```
yay -S wlrctl wtype imagemagick bc xorg-xrandr grim yad
```
- Bản phân phối dựa trên Debian-based:


```
sudo apt install wtype imagemagick bc xorg-xrandr grim meson ninja scdoc
```

Và tự biên dịch wlrctl:

```
git clone https://git.sr.ht/~brocellous/wlrctl
cd wlrctl/
meson setup --prefix=/usr/local build
ninja -C build install
```

### Mở một cửa số lệnh terminal. Sao chép kho lưu trữ này:

```
git clone https://github.com/ductam276/LinuxBSSMacro
```
### Thiết lập ban đầu
Chạy config.sh và điền đủ các thông tin:
```
bash -c $MACRO_DIR/config.sh
```

<h1 align='center'>
Chuẩn bị
</h1>

## Sandbox - Môi trường ảo

Nếu môi trường của bạn không hỗ trợ giao thức `grim` , hoặc bạn muốn chạy nền Macro , bạn có thể sử dụng Macro với công cụ "sandbox", và Macro sẽ hoạt động như bình thường.
Cài đặt các gói cần thiết (phải được cài trước khi sử dụng):

- Bản phân phối dựa trên Arch-based :
```
sudo pacman -S hyprland foot kitty
```
- Bản phân phối dựa trên Debian-based:
```
sudo apt install hyprland foot  kitty
```
Nếu hyprland chưa có ở Công cụ quản lí gói ở bản phát hành của bạn, thì bạn có thể tự biên dịch nó:

```
sudo apt install -y meson wget build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev libtomlplusplus3 libre2-dev # why use ubuntu at that point
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
```
Sau đó, chạy gui.sh để sử dụng Macro.
```
bash -c $MACRO_DIR/gui.sh
```

## Native

Nếu môi trường của bạn hỗ trợ giao thức `grim` , hoặc đơn giản là không muốn sử dụng sandbox (nếu là X11 thì nó là "-pixel detection"(Nhận diện pixel), nhưng tốn thêm +100MB RAM), bạn có thể chạy macro trực tiếp trên môi trường của bạn mà không cần sử dụng Sandbox



> [!CẢNH BÁO]
> Tỉ lệ giao diện của bạn phải là 100%, Roblox phải được mở toàn màn hình và không có độ mixi cản trở việc hoạt động của macro 

Nếu có update, bạn có thể chạy lệnh này trong thư mục của Macro:

```
git pull
```

<h1 align='center'>
Tiến trình ( Bỏ qua tiến trình của bản gốc, đây là tiến trình của tôi)
</h1>


#### Tính năng:
- ❌ Tự động làm nhiệm vụ
- ❌ Cải thiện tự động nhận tổ
- ❌ Tối ưu lại cách đặt vòi nước cho từng loại vòi
- ❌ Cải thiện tính năng nhận diện điểm ảnh
- ❌ Tự động trồng các chậu cây
- ❌ Thêm nhiều máy thả
- ❌ Tự động chọn phương thức di chuyển để tối ưu thời gian
- ❌ Đọc thông tin tổ ong
- ❌ Tối ưu lại con đường
- ❌ Thêm nhiều cách di chuyển khi thu hoạch mật hoa
#### Cánh đồng:
- ❌ Hỗ trợ toàn bộ cánh đồng.


#### Phải làm
- ❌ Góp gạch xây trường
- ❌ Phố phường vinh danh

# Honorable mention: 
<img width="194" height="259" alt="image" src="https://github.com/user-attachments/assets/4562756a-e6f7-4dc0-9f12-d7c369c71022" />

