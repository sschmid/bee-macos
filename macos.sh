#!/usr/bin/env bash

macos::notification() {
  local title="$1"
  local message="$2"
  osascript -e 'display notification "'"${message}"'" with title "'"${title}"'"'
}
