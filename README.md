BASH plugin for wakatime
=======================

Automatic time tracking for commands in BASH using [wakatime](http://wakatime.com/).

Installation
------------

Make sure you have configured wakatime API key in your [~/.wakatime.cfg](https://github.com/wakatime/wakatime#configuring) file.

1. `pip install wakatime` to install wakatime CLI, with 4.1 or higher. See more [here](https://github.com/wakatime/wakatime) for wakatime CLI.

2. For bash users:
  - git clone https://github.com/irondoge/bash-wakatime.git

  - include the "bash-wakatime.sh" file in your "~/.bashrc" file with this command:

    `. path/to/bash-wakatime.sh`

  - or this command:

    `source path/to/bash-wakatime.sh`

  - But if you already have a PROMPT_COMMAND variable set,
    just merge yout own pre_prompt_command with the following one.
    And don't forget to create and configure your "~/.wakatime.cfg" file.

3. Open a new terminal and type commands

4. Visit https://wakatime.com/project/Terminal
