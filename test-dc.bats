#!/usr/bin/env bats

# These are based on examples from the BATS GitHub:
# https://github.com/bats-core/bats-core

@test "basic addition" {
    answer=$(dc -e '1 1 + p')
    [ "$answer" = "2" ]
}

@test "negative number addition" {
    answer=$(dc -e '1 _1 + p')
    [ "$answer" = "0" ]
}

@test "basic subtraction" {
    answer=$(dc -e '1 1 - p')
    [ "$answer" = "0" ]
}

@test "negative number subtraction" {
    answer=$(dc -e '1 _1 - p')
    [ "$answer" = "2" ]
}

