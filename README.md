# EpornerDownloader-CLI

CLI tool to download videos using yt-dlp, with automatic virtual environment setup on first run.

---

## Requirements

- Python 3
- Bash (Linux / macOS / WSL)

---

## Installation

Clone the repository:

```bash
git clone https://github.com/ramdanolii14/EpornerDownloader-CLI.git
cd EpornerDownloader-CLI
```

Give execute permission:

```bash
chmod +x eporner.sh
```

---

## Usage

```bash
./eporner.sh
```

On first run, the script will automatically create a Python virtual environment (`yt-env`) and install `yt-dlp` from the latest source.

Steps:
1. Enter the video URL when prompted.
2. A list of available formats and resolutions will be shown.
3. Enter the resolution code you want.
4. The video will be downloaded to `~/Downloads/Eporner/`.

> **Important:** Download one video at a time. Running multiple downloads simultaneously may trigger HTTP 500 errors from the server. Also, if you get the error **Unable to download webpage: [Errno 104] Connection reset by peer (caused by TransportError('[Errno 104] Connection reset by peer')** try reconnect your vpn or use another location.

---

## Output

Files are saved to:

```
~/Downloads/Eporner/
```

Filename format: `video_title.extension`

---

## Dependencies

| Package | Source |
|---------|--------|
| yt-dlp | https://github.com/yt-dlp/yt-dlp |

Installed automatically inside a local virtual environment (`yt-env`). No global packages are modified.

---

## Supported Sites

Sites confirmed to work with this tool:

| Site | URL | Notes |
|------|-----|-------|
| Pornhub | https://www.pornhub.com | still no bug while i tested this. |
| XVideos | https://www.xvideos.com | still no bug while i tested this. |
| YouPorn | https://www.youporn.com | Video works, but upload date cannot be extracted. |
| xHamster | https://xhamster.com | Select h264 format, avoid hls (kinda buggy, may not always work) |

---

## Notes

- `--legacy-server-connect` and `--no-check-certificate` are used to handle servers with older or self-signed SSL configurations.
- The virtual environment is only created once. Subsequent runs will reuse it.

---
