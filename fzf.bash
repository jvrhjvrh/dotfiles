# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jvrh/Documents/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/jvrh/Documents/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jvrh/Documents/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jvrh/Documents/fzf/shell/key-bindings.bash"
