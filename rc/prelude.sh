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
  printf "${KAK_ESCAPE_EOF:-\n}"
}

kak_escape_partial() {
  KAK_ESCAPE_EOF=' ' kak_escape "$@"
}
