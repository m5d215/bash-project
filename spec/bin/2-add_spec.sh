#!/usr/bin/env bash

set -Ceuo pipefail

function with_stdin {
    echo -n "$1" | ./bin/2-add
}

Describe "${0%_spec.sh}.sh"
    Context '標準入力に 1 から 10 までの整数を与えた時'
        It '55 が出力されること'
            When run with_stdin '1 2 3 4 5 6 7 8 9 10'
            The stdout should equal '55'
        End
    End
End
