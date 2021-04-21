#!/bin/bash
rm -rf $(ls galaxy/* 2>/dev/null)
key=e5dd6da93c0517d413941ef0ba864c8f353e82d7
ansible-galaxy collection build --output-path galaxy
ansible-galaxy collection publish --api-key="$key" $(ls galaxy/*)
