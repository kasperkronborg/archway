#!/usr/bin/env bash

set -e

if [ ! -f /opt/ts/TeamSpeak ]; then
    wget -P /tmp https://files.teamspeak-services.com/pre_releases/client/6.0.0-beta3.4/teamspeak-client.tar.gz
    sudo mkdir /opt/ts
    sudo tar -xzf /tmp/teamspeak-client.tar.gz -C /opt/ts
fi

stow -d dotfiles -t "$HOME" teamspeak
