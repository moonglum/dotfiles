# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-16.04"

  config.ssh.forward_agent = true

  config.vm.network "private_network", ip: "192.168.23.33"
  config.vm.hostname = "dotfiles"

  config.vm.synced_folder "/Users/moonglum/Code", "/home/vagrant/Code", type: "nfs"
  config.vm.synced_folder "/Users/moonglum/.gnupg", "/home/vagrant/.gnupg", type: "nfs"

  config.vm.provider :virtualbox do |v|
    v.cpus = 4
    v.memory = 8056
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
  end
end
