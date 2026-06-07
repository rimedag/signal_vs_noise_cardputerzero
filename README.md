# Signal vs Noise

Offline writing distillation tool for NoirSonance Cardputer Zero and regular
Linux desktops.

Signal vs Noise helps turn messy input into one useful sentence. Start with an idea, lyric, or note, then compress it through staged limits until the final signal is clear enough to keep.

Features:

- Guided compression stages from raw text to final signal.
- Idea, lyric, and note entry modes.
- Optional hard mode for stricter focus.
- Local archive for kept signals.

## Screenshots

![Signal vs Noise start](assets/screenshots/start.png)
![Signal vs Noise distill](assets/screenshots/distill.png)

## Install

Use the install helper:

```bash
curl -fsSL https://raw.githubusercontent.com/rimedag/signal_vs_noise_cardputerzero/main/install.sh | sh
```

Or download the package for your machine:

```bash
ARCH="$(dpkg --print-architecture)"
curl -LO "https://raw.githubusercontent.com/rimedag/signal_vs_noise_cardputerzero/main/pool/main/s/signal-vs-noise/signal-vs-noise_0.1.0-noirsonance1_${ARCH}.deb"
sudo apt install "./signal-vs-noise_0.1.0-noirsonance1_${ARCH}.deb"
```

## Launch

Cardputer Zero / small display:

```bash
signal-vs-noise-cardputerzero
```

Regular Linux desktop or Raspberry Pi HDMI desktop:

```bash
signal-vs-noise-desktop
```

Automatic mode:

```bash
signal-vs-noise
```

## Packages

Public downloads are architecture-specific binary builds:

- `amd64` for regular Linux desktops and laptops.
- `arm64` for Cardputer Zero and 64-bit Raspberry Pi OS.
