# srandrd - simple randr daemon 

srandrd is a simple daemon that executes a command when the xorg output changes,
i.e. a monitor is plugged or unplugged. By default srandrd forks to background
and exits when the xserver exits.

## USAGE: 

srandrd [option] command_with_options_to_execute

## OPTIONS: 

-h  Show help and exit
-n  Don't fork to background
-V  Show version info and exit

## Fork

This repository is a fork of portix's mercurial repo, found [here](https://bitbucket.com/portix/srandrd).
While I found his version nearly perfect, I wanted some changes and his repo seems unmaintained. 