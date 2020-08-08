#!/usr/bin/env bash

# Welcome the user
echo ""
echo "Thanks for trying Kronicle!"

# Epmty 'echos' in order to create like break, for elegance : )
echo ""

sleep 1

echo "Starting installation..."

sleep 1

# Check the existence of the required directories, if they don't exist, create them
DIR="$HOME/.icons"
if [ -d "$DIR" ]; then
    echo ""
    echo "The '"$DIR"' directory already exists on your filesystem."
    echo ""
    sleep 1
    echo "Proceeding..."
    echo ""
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    echo "Creating one..."
    echo ""
    sleep 1
    mkdir $HOME/.icons
    sleep 1
fi

sleep 1

DIR="$HOME/.local/share/applications"
if [ -d "$DIR" ]; then
    echo ""
    echo "The '"$DIR"' directory already exists on your filesystem."
    echo ""
    sleep 1
    echo "Proceeding..."
    echo ""
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    echo "Creating one..."
    echo ""
    sleep 1
    mkdir $HOME/.local/share/applications
    sleep 1
fi

echo "Copying files..."
echo ""

cd $HOME/kronicle

cp -v kronicle.png $HOME/.icons/

cp -v Kronicle.desktop $HOME/.local/share/applications/
chmod --verbose -R 774 $HOME/.local/share/applications/Kronicle.desktop

# Copy the main files
sudo cp $HOME/kronicle/
sudo cp -v $HOME/kronicle/target/debug/kronicle /usr/bin/
sleep 1
sudo chmod u+x /usr/bin/kronicle
sudo chown $USER /usr/bin/kronicle
sudo chgrp wheel /usr/bin/kronicle
sudo chmod --verbose -R 774 /usr/bin/kronicle

sleep 1

sudo cp -v kronicle-jobs /usr/local/bin/
sleep 1
sudo chmod u+x /usr/local/bin/kronicle-jobs
sudo chown $USER /usr/local/bin/kronicle-jobs
sudo chgrp wheel /usr/local/bin/kronicle-jobs
sudo chmod --verbose -R 774 /usr/local/bin/kronicle-jobs

sleep 1

sudo cp -v kronicle.service /lib/systemd/system/
sudo chown $USER /lib/systemd/system/kronicle.service
sudo chgrp wheel /lib/systemd/system/kronicle.service
sudo chmod --verbose -R 774 /lib/systemd/system/kronicle.service

sleep 1

echo "Enabling and start the Kronicle service..."
sudo systemctl enable kronicle.service
sleep 1
sudo systemctl start kronicle.service

sleep 2

echo "Done!"
echo ""

sleep 1

echo "Kronicle is installed on your system! Enjoy!"
echo ""