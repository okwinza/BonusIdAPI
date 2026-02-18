#!/bin/bash
set -e

if [ -n "$BUILD" ]; then
    cache_dir=".cache/$BUILD"
    if [ ! -f "$cache_dir/addon_data.json" ]; then
        echo "Cache missing for build $BUILD, generating..."
        python bonus_id_tool.py generate "$BUILD"
    fi
fi

exec "$@"
