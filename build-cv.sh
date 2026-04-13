#!/bin/bash
# Combined script to generate and compile CV

set -e

echo "Generating Typst source from website markdown files..."
python generate_cv.py

echo "Compiling to PDF (with custom fonts and icons)..."
typst compile cv.typ cv.pdf --font-path ./fonts --ignore-system-fonts

echo "CV generation complete!"
