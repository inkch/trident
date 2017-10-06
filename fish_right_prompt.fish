function __trident_custom_timestamp -S -d 'Show the current timestamp'
  [ "$theme_display_date" = "no" ]; and return
  set -q theme_date_format
    or set -l theme_date_format "+%H:%M:%S - %m/%d"
  return $trident_color_green( date $theme_date_format )
end

function fish_right_prompt -d 'simple timestamp'
  __trident_custom_timestamp
end

