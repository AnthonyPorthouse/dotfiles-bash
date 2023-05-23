#! /usr/bin/env bash

update-sam() {
   local current_dir=$(pwd)
   cd ~/Downloads
   curl -Lo sam-cli.zip "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip"
   unzip sam-cli.zip -d aws-sam
   rm sam-cli.zip

   cd aws-sam
   ./install -i ~/.local/aws-sam-cli -b ~/.local/bin --update
   cd -

   rm -rf aws-sam
   cd $current_dir
}

export SAM_CLI_TELEMETRY=0
