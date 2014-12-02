#!/bin/bash
# Currently only works with apt, but with at least a glance in the general direction of modularity

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function install_ubuntu {
		apt-get install -y git
		git clone --recursive https://github.com/johnswanson/ipython-salt.git $DIR/ipython-salt
		$DIR/ipython-salt/init.sh
}

install_ubuntu

