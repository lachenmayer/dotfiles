#
# Greeting
#

function fish_greeting
  # no greeting
end

#
# Prompt
#

function _replace_home
  echo $argv[1] | sed 's:^/Users/harry:~:' | sed 's:^/home/harry:~:'
end

function fish_prompt
  set -l last_status $status

  # colors
  set -l normal (set_color normal)
  set -l date_color (set_color 666)
  set -l cwd_color (set_color aaa)
  set -l prompt_color (set_color --bold white)
  set -l error_color (set_color --bold red)

  if [ $last_status -ne 0 ]
    set error_status $error_color $last_status " " $normal
  end

  set -l date $date_color(date "+%T")
  set -l current_directory $cwd_color(_replace_home (pwd))

  set -g __fish_git_prompt_showcolorhints 1
  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_color 666
  set -g __fish_git_prompt_char_stateseparator " "

  echo -s $date " " $current_directory (fish_vcs_prompt) " " $error_status
  echo -n -s $prompt_color "λ " $normal
end
