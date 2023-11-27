# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi




# Use lf to switch directories and bind it to ctrl-r
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# Key binding to enter lfcd
bindkey -s '^r' 'lfcd\n'

# Explanation: The above code defines a function 'lfcd' that uses the 'lf' file
# manager to switch directories. It creates a temporary file to store the last
# directory path and runs lf with the '-last-dir-path' option. After running lf,
# it reads the last directory path from the temporary file and changes to that
# directory if it is different from the current one. The key binding '^r' is set
# to enter lfcd.

# Use ranger to switch directories and bind it to ctrl-o
rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# Key binding to enter Ranger
bindkey -s '^o' 'rangercd\n'

# Explanation: Similarly, this section defines a function 'rangercd' that uses
# the 'ranger' file manager to switch directories. It creates a temporary file to
# store the chosen directory path and runs ranger with the '--choosedir' option.
# After running ranger, it reads the chosen directory path from the temporary
# file and changes to that directory if it is different from the current one.
# The key binding '^o' is set to enter rangercd.

# vi mode
#bindkey -v
# Explanation: This sets vi mode for the command line in Zsh. In vi mode, you can
# navigate and edit the command line using vi-like key bindings. 'bindkey -v'
# enables vi mode.

# Explanation: The following code defines a function 'insert_double_quotes'
# that inserts a pair of double quotes and positions the cursor between them.
# The function is then bound to the double quote key using 'bindkey' command.

# Enable extended globbing to use the pattern **/
setopt EXTENDED_GLOB

# Define a function to insert double quotes and position cursor
function insert_double_quotes {
  zle self-insert '"'
  zle self-insert '"'
  zle backward-char
}

# Bind the function to the double quote key
zle -N insert_double_quotes
bindkey '"' insert_double_quotes

# Explanation: The following code defines a function 'insert_single_quotes'
# that inserts a pair of single  quotes and positions the cursor between them.
# The function is then bound to the single quote key using 'bindkey' command.

# Define a function to insert single quotes and position cursor
function insert_single_quotes {
  zle self-insert "'"
  zle self-insert "'"
  zle backward-char
}

# Bind the function to the single quote key
zle -N insert_single_quotes
bindkey "'" insert_single_quotes

# Explanation: The following code defines a function 'insert_parentheses'
# that inserts a pair of parentheses and positions the cursor between them.
# The function is then bound to the parentheses key using 'bindkey' command.

# Define a function to insert parentheses and position cursor
function insert_parentheses {
  zle self-insert "("
  zle self-insert ")"
  zle backward-char
}

# Bind the function to the open parenthesis key
zle -N insert_parentheses
bindkey '(' insert_parentheses

