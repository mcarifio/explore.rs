#!/usr/bin/env bash

set -Eeu -o pipefail

main() (
    shopt -s nullglob
    local -r _current=$(realpath -Lm ${0%/*}/../..)/reading/current
    # When using &, you can't "one line" the for loop?
    for _pdf in ${_current}/*.pdf; do
        okular ${_pdf} &
    done
    for _epub in ${_current}/*.epub; do
        foliate ${_epub} &
    done
)

main "$@"

    
