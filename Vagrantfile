# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.guest = :windows
  # config.vm.box = "ferventcoder/win2008r2-x64-nocm"
#  config.vm.box = "ferventcoder/win2008r2-x64-nocm"
  config.vm.box = "kensykora/windows_2012_r2_standard"
  config.vm.network "private_network", ip: "192.168.50.4"


  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.gui = true
  end

  config.vm.provision :shell, path: "shell/main.cmd"

end
