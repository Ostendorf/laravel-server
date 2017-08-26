Vagrant.require_version ">= 1.8.0"

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-16.04"
  config.vm.define "laravel_server"

  config.vm.provider "virtualbox" do |v|
    v.name = "laravel_server"
    v.cpus = 1
    v.memory = 512
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "99"]
  end

  config.vm.network "private_network", ip: "192.168.10.25"

  config.vm.network "forwarded_port", guest: 80, host: 2580

  # Ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/mitchellh/vagrant/issues/5005
  config.ssh.insert_key = false

  # Run Ansible from the Vagrant Host
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/vagrant.yml"
  end

end
