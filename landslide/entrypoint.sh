#!/bin/sh

pip3 show docutils
echo "Theme: $LANDSLIDE_THEME"


landslide \
    --embed \
    --theme="$LANDSLIDE_THEME" \
    --watch \
    --math-output \
    --verbose \
    --destination=/build/index.html \
    /src/index.rst

