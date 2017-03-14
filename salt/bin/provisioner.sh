#!/bin/bash

if which salt-call >/dev/null; then
    echo salt-call exists
    salt --version
else
    echo salt-call does not exist
    curl -L https://bootstrap.saltstack.com -o install_salt.sh | sudo sh install_salt.sh
fi