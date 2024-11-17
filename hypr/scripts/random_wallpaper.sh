#!/bin/bash

BASE_DIR=$(realpath "$(dirname "$0")/..")
WALLPAPER_DIR="$BASE_DIR/themes/walls"
INTERVAL=300 # 5 Menit

while true; do
    # Pilih wallpaper secara acak dari folder
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    
    # Ganti wallpaper menggunakan swww
    swww img "$WALLPAPER" --transition-type fade --transition-duration 500
    
    # Tunggu selama interval
    sleep $INTERVAL
done
