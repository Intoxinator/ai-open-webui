#!/usr/bin/env zsh
ollama list | awk 'NR > 1 {split($1, array, ":"); print array[1];}' | xargs -I{} sh -c 'echo "Updating model: {}"; ollama pull {}:latest; echo ""'
