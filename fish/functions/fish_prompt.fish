function fish_prompt
  # Cache exit status
  set -l last_status $status
  set -l error_code
  if test $last_status -ne 0
    set error_code "$last_status "
  end


  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
        set -g __fish_prompt_char '# '
      case '*'
        set -g __fish_prompt_char '❯ '
    end
  end

  # Set up colors
  set -l normal (set_color normal)
  set -l white (set_color white)
  set -l turquoise (set_color 5fdfff)
  set -l orange (set_color df5f00)
  set -l hotpink (set_color df005f)
  set -l blue (set_color blue)
  set -l limegreen (set_color 87ff00)
  set -l purple (set_color af5fff)
  set -l red (set_color red)
  set -l red_bold (set_color -o red)

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color cyan
  set -g __fish_git_prompt_color_flags red
  set -g __fish_git_prompt_color_prefix white
  set -g __fish_git_prompt_color_suffix white
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true

  # Line 1
  echo
  echo
  echo -ns $blue (__parse_current_folder) (__fish_git_prompt " (%s)")
  echo

  # Line 2
  echo -ns $red_bold $error_code $__fish_prompt_char $normal
end
