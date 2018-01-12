#!/bin/sh

set -ex

wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb

sudo dpkg -i erlang-solutions_1.0_all.deb

sudo apt-get update

sudo apt-get install erlang erlang-nox -y

echo 'deb http://www.rabbitmq.com/debian/ testing main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list

wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

sudo apt-get update -y

sudo apt-get install rabbitmq-server -y

sudo systemctl enable rabbitmq-server

sudo systemctl stop rabbitmq-server

sudo systemctl start rabbitmq-server

sudo rabbitmq-plugins enable rabbitmq_management