function start
  tmux new -A -s $argv[1] -c ~/Code/$argv[1]
end
