# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # TODO: Update to 16.04 as soon as it is released on Bento
  config.vm.box = "bento/ubuntu-14.04"
  # TODO: Remove me, when a new version is released where HGFS is fixed
  config.vm.box_version = "= 2.2.3"
  config.ssh.forward_agent = true

  config.vm.provision 'shell', inline: <<-'SCRIPT'
    ls /vagrant/tilde |
    ruby -run -ne 'FileUtils.ln_sf "/vagrant/tilde/#{$_.strip!}", "/home/vagrant/.#{$_}"'
  SCRIPT

  config.vm.synced_folder "/Users/moonglum/Code", "/home/vagrant/Code"
  config.vm.synced_folder "/Users/moonglum/.gnupg", "/home/vagrant/.gnupg"

  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "8056"
    v.vmx["numvcpus"] = "2"
    v.vmx["tools.syncTime"] = "TRUE"
    v.vmx["tools.synchronize.restore"] = "TRUE"
  end
end
