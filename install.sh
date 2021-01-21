#!/bin/bash

docker build -t ontology-visualisation .

install_directory="$HOME/.local/bin"

cp visualise_rdf.outside.docker "$install_directory"/visualise_rdf
amend_path_command="export PATH=\"$install_directory:\$PATH\""

if [[ :$PATH: == *:"$install_directory":* ]]; then
  echo "$install_directory already set in \$PATH"
else
  echo "$amend_path_command" >> ~/.bash_profile
  echo "$amend_path_command" >> ~/.zshenv
fi
