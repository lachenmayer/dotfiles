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
  echo $argv[1] | sed 's:^/Users/harry:~:'
end

function fish_prompt
  # colors
  set -l normal (set_color normal)
  set -l cwd_color (set_color aaa)
  set -l prompt_color
  if [ $vi_mode = $vi_mode_insert ]
    set prompt_color (set_color -o white)
  else
    set prompt_color (set_color 666)
  end

  set -l current_directory $cwd_color(_replace_home (pwd))

  echo -s $current_directory " " (_git_status)
  echo -n -s $prompt_color "λ " $normal
end
