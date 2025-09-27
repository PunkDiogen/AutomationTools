Vagrant.configure("2") do |config|
   config.vm.box = "ubuntu/focal64"
   config.vm.synced_folder "src/", "/app"
   config.vm.boot_timeout = 600
   config.vm.provider "virtualbox" do |vb|
         vb.gui = false
         vb.memory = "4000"
         vb.cpus = "2"
   end
   config.vm.provision "shell", inline: <<-SHELL
      apt-get update
    SHELL

   config.vm.define "manager1" do |manager1|
      manager1.vm.hostname="manager1"
      manager1.vm.network "private_network", ip: "192.168.56.13"
      manager1.vm.provision "shell", inline: <<-SHELL
         apt-get update
         apt install software-properties-common -y
         apt-add-repository --yes --update ppa:ansible/ansible
         apt install ansible -y
      SHELL
      manager1.vm.provider "virtualbox" do |vb|
         vb.name = "manager1"
      end
   end

   config.vm.define "consul_server" do |consul|
      consul.vm.hostname="consul.server"
      consul.vm.network "private_network", ip: "192.168.56.14"
      consul.vm.network "forwarded_port", guest: 8500, host: 8500
      consul.vm.provider "virtualbox" do |vb|
         vb.name = "consul_server"
      end
   end
   
   config.vm.define "api" do |api|
      api.vm.hostname="api"
      api.vm.network "private_network", ip: "192.168.56.15"
      api.vm.network "forwarded_port", guest: 8082, host: 8082
      api.vm.provider "virtualbox" do |vb|
         vb.name = "api"
      end
  end

   config.vm.define "db" do |db|
      db.vm.hostname="db"
      db.vm.network "private_network", ip: "192.168.56.16"
      db.vm.provider "virtualbox" do |vb|
         vb.name = "db"
      end
  end

end
