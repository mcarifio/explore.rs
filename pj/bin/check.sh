#!/usr/bin/env bash


# sanity check that important commands are on PATH
check() (
    for _c in "$@"; do
        $(type -P ${_c}) > /dev/null || >&2 echo "${_c} unexpectedly not on PATH"
    done
)

main() (
    check rustc cargo
)

main "$@"


