function fish_right_prompt
  set -l date_color (set_color 666)
  echo -s $date_color (date "+%T")
end
