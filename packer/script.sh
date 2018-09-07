#!/usr/bin/env bash

echo "Bootstrapping ansible"

set -x

sudo apt update
sudo apt install -fy python-pip unzip
sudo pip install --upgrade pip
sudo pip install ansible virtualenv

sudo mkdir -p /main/ansible_playbooks/
sudo chown -R ubuntu: /main