# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.guest = :windows
  config.vm.box = "kensykora/windows_2012_r2_standard"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.gui = true
  end

  config.vm.provision :shell, path: "shell/main.cmd"
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "learn_chef_iis"
  end

end
