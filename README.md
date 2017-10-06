# trident for Fish Shell

Based on [pure](https://github.com/rafaelrinaldi/pure)

<p align=center>
  <img width=585 src=screenshot.png>
</p>

## Install

### [Fisherman](http://fisherman.sh)

```fish
$ fisher inokuc/trident
```

## Features

* Fully customizable
* Display current directory tail
* Display Git branch name
* Display current date on right
* Display whether or not the working copy is dirty
* Display ⇡ if there are stuff to be pushed
* Display ⇣ if there are stuff to be pulled
* Display prompt symbol in red if previous command has failed
* Display the current folder and command when a process is running
* Display username and host when in an SSH session
* Display duration of failed process (defaults to `5`)
* Display python virtualenv name if activated

## Configuration

You can tweak pretty much everything in `trident` by overriding variables in your `config.fish` file:

```fish
# Change the prompt text
set trident_symbol_prompt "~>"
set trident_symbol_git_down_arrow "v"
set trident_symbol_git_up_arrow "^"
set trident_symbol_git_dirty "!"
set trident_symbol_horizontal_bar "_"

# Change the colors
set trident_color_blue (set_color "1e00fd")
set trident_color_cyan (set_color "1e95fd")
set trident_color_gray (set_color "6c6c6c")
set trident_color_green (set_color "66ff66")
set trident_color_normal (set_color "000000")
set trident_color_red (set_color "f820ff")
set trident_color_yellow (set_color "1bc8c8")

# Change colors for username and host in SSH
set trident_username_color $trident_color_yellow
set trident_host_color $trident_color_green
set trident_root_color $trident_color_red

# Change where the username and host is displayed
# 0 - end of prompt, default
# 1 - start of prompt
# Any other value defaults to the default behaviour
set trident_user_host_location 1

# Max execution time of a process before its run time is shown when it exits
set trident_command_max_exec_time 5
```

## License
MIT
