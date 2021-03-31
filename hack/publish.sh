#!/bin/bash
rm -rf $(ls galaxy/* 2>/dev/null)
ansible-galaxy collection build --output-path galaxy
ansible-galaxy collection publish --api-key="$1" $(ls galaxy/*)
