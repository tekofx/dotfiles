mkdir $HOME/screenshots
scrot $HOME/screenshots/screenshot_%Y%m%d_%H%M%S.png
new_image=~/screenshots/$(exa ~/screenshots/ -1 -sold | head -1)
xclip -selection clipboard -t image/png -i $new_image

dunstify -i $new_image  "Full Screenshot Taken" -t 2000