FROM mcr.microsoft.com/vscode/devcontainers/base:0-alpine-3.14

RUN apk --no-cache add \
        bash \
        make \
        shellcheck \
    && git clone https://github.com/shellspec/shellspec.git /usr/local/lib/shellspec \
    && ln -s /usr/local/lib/shellspec/shellspec /usr/local/bin/shellspec
