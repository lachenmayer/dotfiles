#
# Greeting
#

function fish_greeting
  # no greeting
end

#
# Prompt
#

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function _git_status
  if [ (_git_branch_name) ]
    # border
    set -l border_color (set_color normal)

    # branch
    set -l branch_color
    if [ (_is_git_dirty) ]
      set branch_color (set_color red)
    else
      set branch_color (set_color green)
    end

    set -l branch (echo -s $branch_color (_git_branch_name))

    echo -s $branch
  end
end

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

  echo -s $date " " $current_directory " " $error_status (_git_status)
  echo -n -s $prompt_color "λ " $normal
end
