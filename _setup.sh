#! /usr/bin/env bash
setup-bash-config() {
    {
        echo "for f in ~/.config/bash/_*.sh; do"
        echo "  source \$f"
        echo "done"
        echo
        echo "for f in ~/.config/bash/*.sh; do"
        echo "  source \$f"
        echo "done"
    } >> "$HOME/.bashrc"
}
