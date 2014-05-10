# Force myself to use [Readline shortcuts](http://www.bigsmoke.us/readline/shortcuts)
function trollmode() {
  left-arrow() { echo '\nCtrl-b or a word via Ctrl-w' }
  zle -N left-arrow
  bindkey '^[[D' left-arrow

  right-arrow() { echo '\nCtrl-f' }
  zle -N right-arrow
  bindkey '[C' right-arrow

  up-arrow() { echo '\nCtrl-p or search via Ctrl-r' }
  zle -N up-arrow
  bindkey '[A' up-arrow

  down-arrow() { echo '\nCtrl-n or search via Ctrl-s' }
  zle -N down-arrow
  bindkey '[B' down-arrow
}

# Let Guests use the arrow keys when pairing etc.
function guestmode() {
  bindkey '^[[D' backward-char
  bindkey '[C' forward-char
  bindkey '[A' up-line-or-history
  bindkey '[B' down-line-or-history
}

trollmode
