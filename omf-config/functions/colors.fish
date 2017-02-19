function colors -d 'Print out the current color palette'
  # I could use `set_color -c` to get the list of all valid colors,
  # but I want to control the order of the color list so I'll create it manually
  set -l c black red yellow green cyan blue magenta white
  # Add the `br` version of each color right after the standard version of the color
  for color in $c
    set all_colors $all_colors $color br$color
  end
  set all_colors $all_colors normal
  for color in $all_colors
    set_color $color
    echo "This is an example of "$color
  end
  set_color normal
end
