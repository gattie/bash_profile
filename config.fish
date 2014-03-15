# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
 
function fish_prompt
  set last_status $status
  set_color black
  printf '[%s] (' (date +%H:%M:%S)
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color black
  printf ')\n'
  set_color yellow
  printf '%s' (whoami)
  set_color normal
  printf '@'
  set_color blue
  printf '%s' (hostname -s)
  set_color normal
  printf '%s ' (__fish_git_prompt)
  set_color normal
  printf '$ '
end
