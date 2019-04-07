# Ansible Windows environment initializer for home usage
[![Build Status](https://travis-ci.org/GlaIZier/windows-environment.svg?branch=master)](https://travis-ci.org/GlaIZier/windows-environment)

## What does it do
1. Installs applications by chocolatey (chrome... check the full list in the config)
2. Creates directories for different purposes

## Why not Ansible
It is difficult to control Windows environments with Ansible. Moreover, Ansible is not available for control machines.

## Dependencies
[Chocolatey](https://chocolatey.org/docs/installation)

## Installation
Install [chocolatey](https://chocolatey.org/docs/installation)

### Installation on Windows
Install chocolatey

## Run
In powershell
```./run.bat <path to folder to be created> (e.g. C:\Users\user)```

## Config
You can always add additional packages to packages.config
 
## Idempotence
This script is idempotent
