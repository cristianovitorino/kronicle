#!/usr/bin/env bash

echo ""
echo "Thanks for using Kronicle!"
echo ""
sleep 1

sudo pkill kronicle

sudo rm -rf /usr/bin/kronicle

sleep 1

sudo rm -rf /usr/local/bin/kronicle-jobs

sleep 1

sudo rm -rf $HOME/.icons/kronicle.png

sleep 1

sudo systemctl stop kronicle
sleep 1
sudo systemctl disable kronicle
sudo systemctl daemon-reload

sudo rm -rf /lib/systemd/system/kronicle.service

sleep 1

sudo rm -rf $HOME/.local/share/applications/Kronicle.desktop

sleep 1

echo "Kronicle is uninstalled from your system! Thanks for trying it!"
echo ""