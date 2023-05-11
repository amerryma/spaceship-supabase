#
# Supabase
#
# Supabase is a supa-dupa cool tool for making you development easier.
# Link: https://www.supabase.io

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_SUPABASE_SHOW="${SPACESHIP_SUPABASE_SHOW=true}"
SPACESHIP_SUPABASE_ASYNC="${SPACESHIP_SUPABASE_ASYNC=true}"
SPACESHIP_SUPABASE_PREFIX="${SPACESHIP_SUPABASE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_SUPABASE_SUFFIX="${SPACESHIP_SUPABASE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_SUPABASE_SYMBOL="${SPACESHIP_SUPABASE_SYMBOL="🗲 "}"
SPACESHIP_SUPABASE_COLOR="${SPACESHIP_SUPABASE_COLOR="green"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show supabase status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_supabase() {
  # If SPACESHIP_SUPABASE_SHOW is false, don't show supabase section
  [[ $SPACESHIP_SUPABASE_SHOW == false ]] && return

  # Check if supabase command is available for execution
  spaceship::exists supabase || return

  # Show supabase section only when there are supabase-specific files in current
  # working directory.

  # spaceship::upsearch utility helps finding files up in the directory tree.
#  local is_supabase_context="$(spaceship::upsearch supabase.conf)"
  # Here glob qualifiers are used to check if files with specific extension are
  # present in directory. Read more about them here:
  # http://zsh.sourceforge.net/Doc/Release/Expansion.html
  [ ! -f supabase/.temp/project-ref ] && return

  local supabase_version="$(supabase --version)"

  # Check if tool version is correct
  [[ $supabase_version == "system" ]] && return


  local supabase_project_ref="$(cat supabase/.temp/project-ref)"

  local supabase_project_name="$(supabase projects list | grep "$supabase_project_ref" | sed 's/│/,/g' | cut -d "," -f 3 | xargs)"

  # Display supabase section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_SUPABASE_COLOR" \
    --prefix "$SPACESHIP_SUPABASE_PREFIX" \
    --suffix "$SPACESHIP_SUPABASE_SUFFIX" \
    --symbol "$SPACESHIP_SUPABASE_SYMBOL" \
    "$supabase_project_name"

}
