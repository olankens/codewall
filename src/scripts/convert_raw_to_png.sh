#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INPUT_DIR="$SCRIPT_DIR/../raw"
OUTPUT_DIR="$SCRIPT_DIR/../png"
mkdir -p "$OUTPUT_DIR"

shopt -s nullglob
for FILE in "$INPUT_DIR"/*.avif; do
    BASENAME="$(basename "${FILE%.*}")"
    OUTPUT_FILE="$OUTPUT_DIR/${BASENAME}.png"
    echo "Processing: $FILE → $OUTPUT_FILE"
    magick "$FILE" -define png:format=png16 "$OUTPUT_FILE"
done

echo "✅ Done!"
