# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"

  config.ssh.forward_agent = true

  config.vm.network "private_network", ip: "192.168.23.33"
  config.vm.hostname = "dotfiles"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider :virtualbox do |v|
    v.cpus = 4
    v.memory = 8056
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    ansible.install_mode = :pip
    ansible.compatibility_mode = "2.0"
    ansible.extra_vars = { ansible_python_interpreter: "/usr/bin/python3" }
  end
end
