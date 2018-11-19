#!/bin/sh
sudo apt-get update
 sudo apt-get -y upgrade
 sudo apt-get update
 sudo apt-get install -y \
	wget \
	openssh-client \
	curl	\
	git-core \
	build-essential
#Install Nodejs
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install --lts
#Install Yarn 
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

