mkdir -p ~/screenshots
scrot screenshot_%Y%m%d_%H%M%S.png
mv *png ~/screenshots/
new_image=~/screenshots/$(exa ~/screenshots/ -1 -sold | head -1)
xclip -selection clipboard -t image/png -i $new_image

echo $new_image
dunstify -i $new_image  "Full Screenshot Taken" -t 2000