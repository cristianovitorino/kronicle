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
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    echo "Creating one..."
    sleep 1
    mkdir $HOME/.local/share/applications
    sleep 1
fi

sleep 1

DIR="$HOME/.bin"
if [ -d "$DIR" ]; then
    echo ""
    echo "The '"$DIR"' directory already exists on your filesystem."
    echo ""
    sleep 1
    echo "Proceeding..."
    sleep 1

else
    echo "The '"$DIR"' directory doesn't exist on your filesystem."
    echo ""
    echo "Creating one..."
    sleep 1
    mkdir $HOME/.bin
    sleep 1
fi

echo ""
echo "Copying files..."

cd $HOME/kronicle

# Copy the main userspace files
echo ""
cp -v kronicle.png $HOME/.icons/
echo ""
cp -v Kronicle.desktop $HOME/.local/share/applications/
echo ""

# Copy the main root files
sudo cp -v $HOME/kronicle/target/debug/kronicle /usr/local/bin/
echo ""
sleep 1

sudo chmod u+x --verbose /usr/local/bin/kronicle
echo ""
sleep 1

sudo cp -v kronicle-jobs $HOME/.bin/
echo ""
sleep 1

sudo cp -v kronicle.service /lib/systemd/system/
echo ""
sleep 1

echo "Enabling and start the Kronicle service..."
echo ""
sudo systemctl enable kronicle.service
echo ""
sleep 1
sudo systemctl start kronicle.service

sleep 2

echo "Done!"
echo ""

sleep 1

echo "Kronicle is installed on your system! Enjoy!"
echo ""