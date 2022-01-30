macos::help() {
  cat << 'EOF'
usage:

  notification <title> <message>   display a desktop notification
                                   e.g. bee macos notification "bee" "Build complete"

requirements:

  osascript   https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_cmds.html

EOF
}

macos::notification() {
  local title="$1" message="$2"
  osascript -e 'display notification "'"${message}"'" with title "'"${title}"'"'
}
