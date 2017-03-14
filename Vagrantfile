# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define :master do |master_config|

	config.ssh.insert_key = false

        master_config.vm.hostname = "puppet.local"
        master_config.vm.box      = "centos/6"

        master_config.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
            vb.customize ["modifyvm", :id, "--name", "puppet"]
        end

        master_config.vm.provision :shell, :path => "provisioner.sh"
    end
end

