function fish_prompt
  set -l prompt '→ '
  set -l prompt_color green

  if test $status -gt 0
    set prompt_color red
  end

  if [ (jobs | wc -l) -gt 0 ]
    set prompt '✦ '
  end

  set_color $prompt_color; printf $prompt; set_color normal
end
