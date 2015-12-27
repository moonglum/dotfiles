# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-15.04"
  # config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 4000, host: 4000

  config.ssh.forward_agent = true

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbooks/main.yml"
  end

  config.vm.synced_folder "/Users/moonglum/Code", "/home/vagrant/Code"
  config.vm.synced_folder "/Users/moonglum/.gnupg", "/home/vagrant/.gnupg"

  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "8056"
    v.vmx["numvcpus"] = "2"
    v.vmx["tools.syncTime"] = "TRUE"
    v.vmx["tools.synchronize.restore"] = "TRUE"
  end
end
