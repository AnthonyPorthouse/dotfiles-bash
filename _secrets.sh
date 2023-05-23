#!/usr/bin/env bash

get-secret() {
    local secrets_path="$HOME/.local/secrets"
    local secret_name="$1"

    if [ ! -d "$secrets_path" ]; then
        mkdir -p "$secrets_path"
        chmod 700 "$secrets_path"
    fi

    local secret_file="$secrets_path/$secret_name"
    if [ ! -f "$secret_file" ]; then
        echo "No secret called \"$secret_name\" exists" > /dev/stderr
        return 1
    fi

    echo -n "$(< "$secret_file")"
}
