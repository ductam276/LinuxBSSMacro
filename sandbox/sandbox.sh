export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && cd .. && pwd)

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
info "Enter your password. Script will add your user in 'input' group, so macro could interact with your keyboard"
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
echo "Hotkeys you can use inside sandbox, when joined BSS:"
note "CTRL + M = Start macro"
note "CTRL + K = Stop macro"
echo
echo "Press Enter to launch Bee Swarm Simulator"
read
notify-send "CTRL + M = Start macro | CTRL + K = Stop macro | CTRL + R = Stop macro + Reload Roblox" -t 10000
rm $MACRO_DIR/variables/cant_use_pixel_detection
org.vinegarhq.Sober "roblox-player:1+launchmode:play+gameinfo:1537690962+placelauncherurl:https%3A%2F%2Fassetgame.roblox.com%2Fgame%2FPlaceLauncher.ashx%3Frequest%3DRequestGame%26browserTrackerId%3D0%26placeId%3D1537690962%26isPlayTogetherGame%3Dfalse"
exit 1
