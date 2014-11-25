#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# $DIR is the full directory name this script is stored in (i.e. the repo)

# install salt
wget -O - https://bootstrap.saltstack.com | sh

# move configuration into place
ln -s $DIR/etc/salt /etc/salt/minion

ln -s $DIR/srv/salt /srv/salt

salt-call --local state.highstate
