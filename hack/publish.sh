#!/bin/bash
rm -rf $(ls galaxy/*)
ansible-galaxy collection build --output-path galaxy
ansible-galaxy collection publish --token="$1" $(ls galaxy/*)
