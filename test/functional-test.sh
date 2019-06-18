#!/usr/bin/env bash

shopt -s expand_aliases

alias tldr="node bin/cli.js"

function tldr-render-pages {
  tldr zip && \
  tldr du --os=linux && \
  tldr du --os=osx && \
  tldr --random && \
  tldr --random-example && \
  tldr --list && \
  tldr --list-all
}

tldr --render $HOME/.tldr/cache/pages/common/ssh.md && \
tldr --update && tldr-render-pages && \
tldr --clear-cache && \
tldr --update && tldr-render-pages
