function __trident_custom_timestamp -S -d 'Show the current timestamp'
  [ "$theme_display_date" = "no" ]; and return
  set -q theme_date_format
    or set -l theme_date_format "+%H:%M:%S - %m/%d"
  echo -n '  '
  date $theme_date_format
end

function fish_right_prompt -d 'bobthefish is all about the right prompt'
  set_color $fish_color_cwd
  __trident_custom_timestamp
  set_color normal
end

