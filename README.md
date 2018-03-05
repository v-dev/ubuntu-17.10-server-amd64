# About
Quick way to create an Ubuntu 17.10 x64 Server with latest Docker CE.

# Notes
If you're pulling this repo down to a Windows box, make sure to unset `autocrlf` first:

    git config --global core.autocrlf false

The `vdev/ubuntu-17.10-server-amd64` Vagrant box was created from a modified 1704-desktop Packer template from boxcutter:
https://github.com/boxcutter/ubuntu/blob/master/ubuntu1704-desktop.json

## Post Setup
Some things you may want to do on your own...

    sudo apt update && sudo apt dist-upgrade
    
    sudo apt install xubuntu-desktop --no-install-recommends

> Note: If you install a GUI and would like to use it, in the `Vagrantfile`, make sure to set `vb.gui` to `true`.

