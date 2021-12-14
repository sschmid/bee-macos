macos::help() {
  cat << 'EOF'
Useful commands for macOS - https://github.com/sschmid/bee-macos

usage:

  notification <title> <message>   display a desktop notification
                                   e.g. bee macos notification "bee" "Build complete"

bee dependencies:

  none

dependencies:

  osascript   https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_cmds.html

EOF
}

macos::notification() {
  local title="$1" message="$2"
  osascript -e 'display notification "'"${message}"'" with title "'"${title}"'"'
}
