var=$(amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1)

dunstify  "Volume: " -h int:value:$var -u low -t 500 