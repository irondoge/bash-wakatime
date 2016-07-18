# wakatime for bash
#
# include this file in your "~/.bashrc" file with this command:
#   . path/to/bash-wakatime.sh
#
# or this command:
#   source path/to/bash-wakatime.sh
#
# Don't forget to create and configure your "~/.wakatime.cfg" file.

# hook function to send wakatime a tick
pre_prompt_command() {
    git status &> /dev/null && local project="$(basename $(git rev-parse --show-toplevel))" || local project="Terminal"
    (wakatime --write --plugin "bash-wakatime/0.0.1" --entity-type app --project "$project" --entity "$(echo $(fc -ln -0) | cut -d ' ' -f1)" 2>&1 > /dev/null &)
}

PROMPT_COMMAND="pre_prompt_command; $PROMPT_COMMAND"
