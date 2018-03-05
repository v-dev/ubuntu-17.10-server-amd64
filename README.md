# About
Quick way to create an Ubuntu 17.10 x64 Server with latest Docker CE.

> Note: Although the name has 'desktop' in it, it does not actually have the desktop/GUI installed.

# Notes
The `ubuntu1710-desktop-0.1.0` Vagrant box was created from a modified:
https://github.com/boxcutter/ubuntu/blob/master/ubuntu1704-desktop.json

> Note: If you're pulling this repo down to a Windows box, make sure to unset `autocrlf` first:

    git config --global core.autocrlf false

## Post Setup
Some things you may want to do on your own...

    sudo apt update && sudo apt dist-upgrade
    
    sudo apt install xubuntu-desktop --no-install-recommends

> Note: If you install a GUI and would like to use it, in the `Vagrantfile`, make sure to set `vb.gui` to `true`.

