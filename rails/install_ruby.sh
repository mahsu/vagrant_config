#!/usr/bin/env bash
#Do not run this script as root user
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -L http://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
rvm requirements
rvm install $1
rvm use $1
gem install rails --no-ri --no-rdoc

echo "Set the location of the ruby sdk to:"
rvm gemdir