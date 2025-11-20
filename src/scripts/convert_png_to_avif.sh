#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INPUT_DIR="$SCRIPT_DIR/../"
OUTPUT_DIR="$SCRIPT_DIR/../"
mkdir -p "$OUTPUT_DIR"

shopt -s nullglob
for FILE in "$INPUT_DIR"/*.png; do
    BASENAME="$(basename "${FILE%.*}")"
    OUTPUT_FILE="$OUTPUT_DIR/${BASENAME}.avif"
    echo "Processing: $FILE → $OUTPUT_FILE"
    avifenc "$FILE" "$OUTPUT_FILE"
done

echo "✅ Done!"
