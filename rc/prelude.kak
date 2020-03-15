declare-option -hidden str prelude_path %sh(dirname "$kak_source")

provide-module prelude %{
  declare-option -docstring 'Path to the prelude of shell blocks' str prelude "%opt{prelude_path}/prelude.sh"
}

require-module prelude
