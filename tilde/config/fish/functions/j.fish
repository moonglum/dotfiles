function j
  cd ~/Code/$argv[1]
end

complete -c j -f -a '(command ls ~/Code)'
