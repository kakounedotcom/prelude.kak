declare-option -hidden str prelude_root_path %sh(dirname "$kak_source")

provide-module prelude %{
  declare-option -docstring 'Path to the prelude of shell blocks' str prelude_path "%opt{prelude_root_path}/prelude.sh"
}
