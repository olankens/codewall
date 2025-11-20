<div align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)" srcset=".assets/icon-dark.svg">
        <img src=".assets/icon.svg" height="132">
    </picture>
    <h1><samp>CODEWALL</samp></h1>
    <p>Transform your workspace with bold, high-quality wallpapers made for developers. Each design captures the spirit of coding with clean lines, vibrant colors, and modern style.</p>
</div>

---

<h3 align="center">Wallpapers</h3>

<img src="src/node-01.avif" width="49.375%"/><img src=".assets/1x1.gif" width="1.25%"/><img src="src/node-02.avif" width="49.375%"/><img src="src/node-03.avif" width="49.375%"/><img src=".assets/1x1.gif" width="1.25%"/><img src="src/node-04.avif" width="49.375%"/><img src="src/node-05.avif" width="49.375%"/><img src=".assets/1x1.gif" width="1.25%"/><img src="src/node-06.avif" width="49.375%"/><img src="src/python-01.avif" width="49.375%"/><img src=".assets/1x1.gif" width="1.25%"/><img src="src/python-02.avif" width="49.375%"/><img src="src/angular-01.avif" width="49.375%"/><img src=".assets/1x1.gif" width="1.25%"/><img src="src/angular-02.avif" width="49.375%"/><img src="src/node-07.avif" width="49.375%"/>

---

<h3 align="center">Set Wallpaper on Gnome</h3>

```shell
...
```

---

<h3 align="center">Set Wallpaper on KDE</h3>

```shell
...
```

---

<h3 align="center">Set Wallpaper on macOS</h3>

This script resets all com.apple.wallpaper settings to their default state, downloads the specified wallpaper image, and then applies it across every desktop on all monitors and spaces, ensuring a consistent background throughout your macOS environment.

```shell
address="https://github.com/olankens/codewall/raw/HEAD/src/node-01.avif"
picture="$HOME/Pictures/Wallpapers/$(basename "$address")"
rm -v "$HOME/Library/Application Support/com.apple.wallpaper/Store/Index.plist"
killall WallpaperAgent
mkdir -p "$(dirname "$picture")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$picture\""
```

---

<h3 align="center">Set Wallpaper on Windows</h3>

```powershell
...
```
