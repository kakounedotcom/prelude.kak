kak_escape() {
  for text do
    printf "'"
    while true; do
      case "$text" in
        *"'"*)
          head=${text%%"'"*}
          tail=${text#*"'"}
          printf "%s''" "$head"
          text=$tail
          ;;
        *)
          printf "%s' " "$text"
          break
          ;;
      esac
    done
  done
  printf '\n'
}
