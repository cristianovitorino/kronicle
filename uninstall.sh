#!/usr/bin/env bash

echo ""
echo "Thanks for using Kronicle!"
sleep 1

sudo pkill kronicle

sudo rm -rf /usr/local/bin/kronicle

sleep 1

sudo rm -rf /usr/local/bin/kronicle-jobs

sleep 1

sudo rm -rf $HOME/.icons/kronicle.png

sleep 1

sudo systemctl stop kronicle
sleep 1
echo ""
sudo systemctl disable kronicle
sleep 1
echo ""
sudo systemctl daemon-reload

sudo rm -rf /lib/systemd/system/kronicle.service

sleep 1

sudo rm -rf $HOME/.local/share/applications/Kronicle.desktop

sleep 1

echo "Kronicle is uninstalled from your system! Thanks for trying it!"
echo ""