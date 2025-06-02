#!/bin/bash
while true; do
  if xsel -o -p > /tmp/primary; then
    if ! cmp -s /tmp/primary /tmp/clipboard; then
      xsel -o -p | xsel -i -b
    fi
  fi
  if xsel -o -b > /tmp/clipboard; then
    if ! cmp -s /tmp/clipboard /tmp/primary; then
      xsel -o -b | xsel -i -p
    fi
  fi
  sleep 0.1
done
