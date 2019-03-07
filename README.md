# Ansible Windows environment initializer for home usage
[![Build Status](https://travis-ci.org/GlaIZier/windows-environment.svg?branch=master)](https://travis-ci.org/GlaIZier/windows-environment)

Todo finish and test

## What does it do
1. Installs chocolatey 
2. Installs applications (chrome... check the full list in the config)
3. Creates directories for different purposes

## Dependencies
no

## Installation
  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. [Install Ansible](https://www.ansible.com/integrations/infrastructure/windows).
  3. Clone this repository to your local drive.

## Run
TBD
### Run all tasks
`ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted. \
### Run separate tasks
Filter by tags can be used: `ansible-playbook main.yml -i inventory -K --tags "dotfiles,homebrew"` \
Or update the config to disable some tasks, e.g. `configure_homebrew: no` \
By using these strategies you can execute tasks one by one.


## Config
You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and apps with something like:

    chocolatey_apps:
      - cowsay
      - git
      - go
 
## Idempotence
TBD
