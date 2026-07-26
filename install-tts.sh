#!/bin/bash
set -e
STATE_DIR="${OPENCLAW_STATE_DIR:-$HOME/.openclaw}"
RUNTIME_DIR="$STATE_DIR/tools/sherpa-onnx-tts/runtime"
MODELS_DIR="$STATE_DIR/tools/sherpa-onnx-tts/models"
mkdir -p "$RUNTIME_DIR" "$MODELS_DIR"

curl -fsSL -o /tmp/sherpa-runtime.tar.bz2 \
  https://github.com/k2-fsa/sherpa-onnx/releases/download/v1.13.2/sherpa-onnx-v1.13.2-linux-x64-shared.tar.bz2
tar xjf /tmp/sherpa-runtime.tar.bz2 -C "$RUNTIME_DIR" --strip-components=1
rm -f /tmp/sherpa-runtime.tar.bz2

curl -fsSL -o /tmp/sherpa-model.tar.bz2 \
  https://github.com/k2-fsa/sherpa-onnx/releases/download/tts-models/vits-piper-en_US-lessac-high.tar.bz2
tar xjf /tmp/sherpa-model.tar.bz2 -C "$MODELS_DIR"
rm -f /tmp/sherpa-model.tar.bz2

echo "runtime:"; ls "$RUNTIME_DIR" | head -5
echo "models:"; ls "$MODELS_DIR"
echo done
