## My Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*'           enable             git
zstyle ':vcs_info:git:*'       check-for-changes  true
zstyle ':vcs_info:git:*:-all-' command            /usr/local/bin/git

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})  "

precmd () {
  zstyle ':vcs_info:git:*' actionformats      " @ %b|%a%u"
  zstyle ':vcs_info:git:*' formats            " @ %b%u"
  zstyle ':vcs_info:git:*' unstagedstr        " ✖"

  vcs_info

  PROMPT='${smiley}'
  RPROMPT='%~$vcs_info_msg_0_'
}
