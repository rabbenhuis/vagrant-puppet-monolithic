# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define :master do |master_config|

        master_config.vm.hostname = "puppet.local"
        master_config.vm.box      = "centos/6"

        master_config.vm.network :private_network, ip: "10.10.10.2"

        master_config.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
            vb.customize ["modifyvm", :id, "--name", "puppet"]
        end

        master_config.vm.synced_folder "/d/software", "/opt/software"
    end
end

