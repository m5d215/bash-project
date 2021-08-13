#!/usr/bin/env bash

set -Ceuo pipefail

Describe "${0%_spec.sh}.sh"
    It 'Hello World! と出力されること'
        When run ./bin/1-helloworld
        The stdout should equal 'Hello World!'
    End
End
