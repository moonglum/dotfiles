Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  config.ssh.forward_agent = true

  # config.vm.network "private_network", ip: "192.168.23.33"
  config.vm.hostname = "dotfiles"
  # config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.synced_folder ".", "/home/vagrant/Code/dotfiles",
    create: true

  config.vm.provider :virtualbox do |v|
    v.cpus = 4
    v.memory = 8056
  end
end
