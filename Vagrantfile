# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = 3072
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--monitorcount", "4"]
    vb.customize ["modifyvm", :id, "--vram", "128"]
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "75"]
  end

  config.vm.provision "shell", path: "bootstrap.sh"

end
