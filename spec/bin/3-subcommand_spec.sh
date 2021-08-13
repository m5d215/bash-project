#!/usr/bin/env bash

set -Ceuo pipefail

function with_stdin {
    echo -n "$2" | ./bin/3-subcommand "$1"
}

Describe "${0%_spec.sh}.sh"
    Describe 'add サブコマンド'
        Context '標準入力に 1 から 10 までの整数を与えた時'
            It '55 が出力されること'
                When run with_stdin add '1 2 3 4 5 6 7 8 9 10'
                The stdout should equal '55'
            End
        End
    End

    Describe 'mul サブコマンド'
        Context '標準入力に 1 から 5 までの整数を与えた時'
            It '120 が出力されること'
                When run with_stdin mul '1 2 3 4 5'
                The stdout should equal '120'
            End
        End
    End
End
