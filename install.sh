#!/bin/bash

docker build -t ontology-visualisation .
cp visualise_rdf.outside.docker ~/.local/bin/visualise_rdf
amend_path_command="export PATH=\"$HOME/.local/bin:\$PATH\""
echo "$amend_path_command" >> ~/.bash_profile
echo "$amend_path_command" >> ~/.zshenv
