# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "vdev/ubuntu-17.10-server-amd64"

  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.network "forwarded_port", guest: 4444, host: 4444
  config.vm.network "forwarded_port", guest: 443, host: 8443

  config.vm.provider "virtualbox" do |vb|
    vb.name = "vdev-ubuntu-17.10-server-amd64"
    vb.gui = false

    vb.memory = "8192"
    vb.cpus = "4"
  end

  config.vm.provision "shell" do |s|
      s.path = "provision/install_docker.sh"
  end

end
