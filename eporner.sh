#!/bin/bash
if [ ! -d "yt-env" ]; then
    python3 -m venv yt-env
    yt-env/bin/pip install -U https://github.com/yt-dlp/yt-dlp/archive/master.zip
fi

read -p "Link: " url
out_dir="$HOME/Downloads/Eporner"
mkdir -p "$out_dir"

# logic
yt-env/bin/yt-dlp --legacy-server-connect --no-check-certificate -F "$url"
read -p "Pilih kode resolusi: " res

yt-env/bin/yt-dlp --legacy-server-connect --no-check-certificate --progress -o "$out_dir/%(title)s.%(ext)s" -f "$res" "$url"
