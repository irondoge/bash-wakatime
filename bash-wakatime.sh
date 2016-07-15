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

    local project=$( \
        type git                               2>&1 > /dev/null && \
        git rev-parse --git-dir > /dev/null    2>&1 > /dev/null && \
        basename git rev-parse --show-toplevel 2>&1 > /dev/null || \
        echo terminal
    )

    (wakatime --write --plugin "bash-wakatime/0.0.1" --entity-type app --project $project --entity "$(echo $(fc -ln -0) | cut -d ' ' -f1)" 2>&1 > /dev/null &)
}

PROMPT_COMMAND="pre_prompt_command; $PROMPT_COMMAND"
