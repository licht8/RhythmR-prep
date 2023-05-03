#!/bin/bash

search_string() {
    pattern="$1"
    directory="${2:-/}"  # Если путь не указан, то используется корневая директория /

    grep -rl "$pattern" --include "*.sh" "$directory"
}
