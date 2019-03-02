set __fish_git_prompt_color_branch blue
set __fish_git_prompt_show_informative_status 'yes'

function fish_right_prompt
  printf '%s%s' (pwd) (__fish_git_prompt)
end
