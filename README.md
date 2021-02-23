# Archived

**prelude.kak** has been replaced by [kakoune.cr].

[kakoune.cr]: https://github.com/alexherbo2/kakoune.cr

# prelude.kak

Prelude of shell blocks for [Kakoune].

## Installation

Add [`prelude.kak`](rc/prelude.kak) to your autoload or source it manually.

``` kak
require-module prelude
```

## Usage

```
kak_escape [text…]
```

Similar to `shell_escape` you may find in other programming languages,
`kak_escape` escapes each argument so that it can be safely passed to Kakoune.

**Implementation**:
Single quotes each argument and doubles the single quotes inside.

**Note**:
The resulted text should be used unquoted and is not intended for use in double quotes, nor in single quotes.

**Example**:

``` kak
evaluate-commands %sh{
  . "$kak_opt_prelude_path"
  kak_escape evaluate-commands -try-client "$kak_client" 'echo Tchou' | kak -p "$kak_session"
}
```

[Kakoune]: https://kakoune.org
