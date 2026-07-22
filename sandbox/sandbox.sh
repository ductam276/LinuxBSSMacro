export MACRO_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
function note(
echo -e "\\033[30;43m[i] $1\\033[0m"
)
function info(
echo -e "\\033[33m[i] $1\\033[0m"
)
clear
info "Welcome to BeeTux Macro start script!"
echo Right now, you are in what I call a \"Sway sandbox\". It ensures that everything works as intended. Also it allows you to macro in background
echo
note "Make Hyprland (not kitty) window fullscreen!"
info "It is required to setup Hyprland's monitor config properly"
note "Press Enter when you are 100% sure Hyprland window is fullscreen"
read
width=$(xrandr | grep "*" | awk '{print $1}' | cut -dx -f1)
height=$(xrandr | grep "*" | awk '{print $1}' | cut -dx -f2)
echo "monitor = ,"$width"x"$height",auto,1" > ~/macro_monitor.conf
clear
info "Enter your password. Script will add your user in 'input' group and start ydotool daemon"
sudo usermod -aG input $USER 2>/dev/null
hyprctl reload
sleep 2
clear
echo Before you go, read this:
echo
info "- Sway's window MUST be fullscreen to everything work properly. You can switch windows afterwards"
info "- Macro's input would be only addressed to BSS, not your main environment"
info "- Mouse control might be quirky"
info "- Auto Reconnect sadly DOESN'T WORK."
echo
echo
echo "Press Enter to launch Bee Swarm Simulator"
read
rm $MACRO_DIR/variables/cant_use_pixel_detection
hyprctl dispatch exec "[class ^(soberr)$] org.vinegarhq.Sober "roblox-player:1+launchmode:play+gameinfo:1537690962+placelauncherurl:https%3A%2F%2Fassetgame.roblox.com%2Fgame%2FPlaceLauncher.ashx%3Frequest%3DRequestGame%26browserTrackerId%3D0%26placeId%3D1537690962%26isPlayTogetherGame%3Dfalse"
exit 1
