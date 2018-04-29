function s
  tmux new -A -s $argv[1] -c ~/Code/$argv[1]
end

complete -c s -f -a '(command ls ~/Code)'
