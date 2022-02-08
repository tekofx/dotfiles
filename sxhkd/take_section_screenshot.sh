scrot -s screenshot_%Y%m%d_%H%M%S.png
mv *png ~/Pictures/
new_image=~/Pictures/$(exa ~/Pictures/ -1 -sold | head -1)
xclip -selection clipboard -t image/png -i $new_image

dunstify -i $new_image  "Section Screenshot Taken" -t 2000 