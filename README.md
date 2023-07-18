BASH plugin for wakatime
=======================

Automatic time tracking for commands in BASH using [wakatime](http://wakatime.com/).

Installation
------------

Make sure you have configured wakatime API key in your [~/.wakatime.cfg](https://github.com/wakatime/wakatime-cli/blob/develop/USAGE.md#ini-config-file) file.

1. Run `./install_cli.sh` to install the [WakaTime CLI](https://github.com/wakatime/wakatime-cli).

2. For bash users:
  - git clone https://github.com/irondoge/bash-wakatime.git

  - include the "bash-wakatime.sh" file in your "~/.bashrc" file with this command:

    `. path/to/bash-wakatime.sh`

  - or this command:

    `source path/to/bash-wakatime.sh`

  - But if you already have a PROMPT_COMMAND variable set,
    just merge your own pre_prompt_command with the following one.
    And don't forget to create and configure your "~/.wakatime.cfg" file.

3. Open a new terminal and type commands

4. Visit https://wakatime.com/project/Terminal
