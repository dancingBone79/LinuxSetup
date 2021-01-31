override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom" # needed for reload optimization, should be unique

  # Place your overrides here
  Blue="\[\033[0;96m\]"
}

# load the theme
reload_git_prompt_colors "Custom"
