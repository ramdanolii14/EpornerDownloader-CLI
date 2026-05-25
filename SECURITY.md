# Security Policy

## Supported Versions

This project is a single-script CLI tool. Only the latest version on the main branch is maintained and considered supported.

| Version | Supported |
|---------|-----------|
| main (latest) | yes |
| older commits | no |

---

## Known Security Considerations

This tool uses the following yt-dlp flags that intentionally bypass certain SSL checks:

- `--no-check-certificate` — disables SSL certificate verification when connecting to the target server.
- `--legacy-server-connect` — allows connections to servers using older TLS configurations.

These flags were added to handle compatibility with certain hosts. Be aware that using them reduces the security of the connection. Only run this tool against URLs you trust.

---

## Dependency

This tool installs yt-dlp directly from the GitHub master branch:

```
https://github.com/yt-dlp/yt-dlp/archive/master.zip
```

This means the installed version always reflects the latest upstream commit, which may occasionally include unstable or unreviewed changes. If this is a concern, pin to a specific release tag instead.

---

## Virtual Environment Scope

All dependencies are installed inside a local virtual environment (`yt-env/`) within the project directory. No system-level Python packages are modified. Removing the `yt-env/` folder is sufficient to clean up all installed dependencies.

---

## Reporting a Vulnerability

If you find a security issue in this project, open an issue on the repository or contact the author directly via GitHub:

https://github.com/ramdanolii14
