function __trident_set_default -S -a var default
  if not set -q $var
    set -g $var $default
  end
end
