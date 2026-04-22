<hr>

<div align="center">
  <p><img src=".assets/icon.svg" width="128"/></p>
  <sub>COLLECTION</sub>
  <h1>CODEWALL</h1>
  <p>Transform your workspace with bold, high-quality wallpapers made for developers. Sourced from various websites, these images were carefully cleaned and upscaled, delivering sharper detail and a modern, refined visual experience.</p>
</div>

<hr>

### Wallpapers

<p><img src="src/node-01.avif" width="32.5%"/><img src=".assets/zero.png" width="1.25%"/><img src="src/node-02.avif" width="32.5%"/><img src=".assets/zero.png" width="1.25%"/><img src="src/node-03.avif" width="32.5%"/><picture><source media="(prefers-color-scheme: dark)" srcset=".assets/dark.png"><img src=".assets/pure.png" height="2" width="100%"></picture></p>
<p><img src="src/node-04.avif" width="32.5%"/><img src=".assets/zero.png" width="1.25%"/><img src="src/node-05.avif" width="32.5%"/><img src=".assets/zero.png" width="1.25%"/><img src="src/node-06.avif" width="32.5%"/><picture><source media="(prefers-color-scheme: dark)" srcset=".assets/dark.png"><img src=".assets/pure.png" height="2" width="100%"></picture></p>
<p><img src="src/python-01.avif" width="32.5%"/><img src=".assets/zero.png" width="1.25%"/><img src="src/python-02.avif" width="32.5%"/><img src=".assets/zero.png" width="1.25%"/><img src="src/angular-01.avif" width="32.5%"/></p>

<hr>

### Set Wallpaper on Gnome

```shell
...
```

<hr>

### Set Wallpaper on KDE

```shell
...
```

<hr>

### Set Wallpaper on macOS

This script resets all com.apple.wallpaper settings to their default state, downloads the specified wallpaper image, and
then applies it across every desktop on all monitors and spaces, ensuring a consistent background throughout your macOS
environment.

```shell
address="https://github.com/olankens/codewall/raw/HEAD/src/node-01.avif"
picture="$HOME/Pictures/Wallpapers/$(basename "$address")"
rm -v "$HOME/Library/Application Support/com.apple.wallpaper/Store/Index.plist"
killall WallpaperAgent
mkdir -p "$(dirname "$picture")"
curl -LA "mozilla/5.0" "$address" -o "$picture"
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"$picture\""
```

<hr>

### Set Wallpaper on Windows

```powershell
...
```

<hr>