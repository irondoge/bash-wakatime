# wakatime for bash
#
# include this file in your "~/.bashrc" file with this command:
#   . path/to/bash-wakatime.sh
#
# or this command:
#   source path/to/bash-wakatime.sh
#
# But if you already have a PROMPT_COMMAND variable set,
# just merge yout own pre_prompt_command with the following one.
# And don't forget to create and configure your "~/.wakatime.cfg" file.
#

# hook function to send wakatime a tick
pre_prompt_command() {
    (wakatime --write --plugin "bash-wakatime/0.0.1" --entity-type app --project Terminal --entity "$(echo $(fc -ln -0) | cut -d ' ' -f1)" 2>&1 > /dev/null &)
}

PROMPT_COMMAND=pre_prompt_command
