#!/bin/sh
set -eu

arch="${SIGNAL_VS_NOISE_ARCH:-$(dpkg --print-architecture)}"
case "$arch" in
    amd64|arm64) ;;
    *)
        echo "Unsupported architecture: $arch" >&2
        echo "Signal vs Noise public binary packages are available for amd64 and arm64." >&2
        exit 1
        ;;
esac

asset="signal-vs-noise_0.1.0-noirsonance2_${arch}.deb"
repo="${SIGNAL_VS_NOISE_REPO:-rimedag/signal_vs_noise_cardputerzero}"
base_url="${SIGNAL_VS_NOISE_BASE_URL:-https://raw.githubusercontent.com/${repo}/main/pool/main/s/signal-vs-noise}"
url="${base_url}/${asset}"
tmp_dir="$(mktemp -d)"

cleanup() {
    rm -rf "$tmp_dir"
}
trap cleanup EXIT INT TERM

echo "Downloading ${asset}..."
curl -fL "$url" -o "${tmp_dir}/${asset}"

echo "Installing Signal vs Noise..."
(
    cd "$tmp_dir"
    sudo apt install "./${asset}"
)

echo "Done. Launch with: signal-vs-noise-desktop, signal-vs-noise-cardputerzero, or signal-vs-noise"
