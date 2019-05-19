man --locale=en -k . | rofi -dmenu -location 3 | awk '{print $1}' | xargs -r man -Tpdf | zathura -

