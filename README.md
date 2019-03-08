# Ansible Windows environment initializer for home usage
[![Build Status](https://travis-ci.org/GlaIZier/windows-environment.svg?branch=master)](https://travis-ci.org/GlaIZier/windows-environment)

Todo move to chocolatey script (https://github.com/chocolatey/choco/issues/1286, https://stackoverflow.com/questions/4165387/create-folder-with-batch-but-only-if-it-doesnt-already-exist) as Ansible have problems with Windows: required to RM to be install on (https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html#authentication-options) and it's difficult to install it on a control machine.

## What does it do
1. Installs chocolatey 
2. Installs applications (chrome... check the full list in the config)
3. Creates directories for different purposes

## Dependencies
no

## Installation
Install [chocolatey](https://chocolatey.org/docs/installation)

  Install Ansible on the same Windows machine, which could be tricky, or install it on a Linux machine and change inventory file to control a Windows machine remotely. 
### Installation on Windows
https://www.jeffgeerling.com/blog/2017/using-ansible-through-windows-10s-subsystem-linux
  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. [Install Ansible](https://www.ansible.com/integrations/infrastructure/windows).
  3. Clone this repository to your local drive.

## Run
1. `choco install packages.config`

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
