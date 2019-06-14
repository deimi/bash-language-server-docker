WORK IN PROGRESS
Status: not working


Docker container with bash language server for VSCode extension "Bash IDE"
The server is executed on demand and won't need to be run in the background

## Requirements
Docker for Windows in linux mode.

## Building docker image
Call build-bash-language-server.bat from command line

This will create a image called "bash-language-server:latest"

## Set up VSCode extension "Bash IDE"

https://marketplace.visualstudio.com/items?itemName=mads-hartmann.bash-ide-vscode

Set "bashIde.path" to the path where bash-language-server.cmd is stored. The extension will call the batch file itself.
Tested with version x.x.x

## Running bash-language-server
Call bash-language-server.cmd

This will execute the language server inside a temporary docker container. 

## To do
[ ] Scripts for linux
