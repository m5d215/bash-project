#!/usr/bin/env bash

set -Ceuo pipefail

function add_impl {
    jq -scr 'add'
}

function mul_impl {
    jq -scr 'reduce .[] as $n (1; . * $n)'
}
