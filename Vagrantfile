# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

Vagrant.configure(2) do |config|
  config.vm.box = "iflowfor8hours/win2k8-chef"
  config.vm.communicator = "winrm"
  config.vm.guest = :windows
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.ssh.insert_key = false

  config.vm.provider :aws do |aws, override|
    aws_config = YAML::load_file(File.join(Dir.pwd, "aws_secrets.yml"))
    aws.keypair_name = aws_config.fetch("keypair_name")
    aws.access_key_id = aws_config.fetch("access_key_id")
    aws.secret_access_key = aws_config.fetch("secret_access_key")
    override.ssh.private_key_path = aws_config.fetch("keypair_path")

    override.vm.box = "dummy"
    override.vm.synced_folder ".", "/vagrant", disabled: true
    override.winrm.username = "Administrator"

    aws.instance_type = "t2.micro"
    aws.region = "us-west-2"
    aws.ami = "ami-8ca6bfed"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.gui = true
  end

  config.vm.provision "chef_solo" do |chef|
    chef.install = false
    chef.add_recipe "learn_chef_iis"
  end

end
