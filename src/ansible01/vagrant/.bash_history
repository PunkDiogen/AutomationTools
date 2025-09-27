ssh-keygen
cat /home/vagrant/.ssh/id_rsa
nano /home/vagrant/.ssh/id_rsa
exit
ls
cd my_app/
ls
cd services/
ls
cd booking-service/
ls
cd ..
ls
cp services/ /vagrant/src/
cp -r services/ /vagrant/src/
ls
exit
ls
cd ansible/
touch ansible.cfg
ansible --version
ansible all -m ping
ls
cd ..
;s
ls
ansible all -m ping
ansible -m ping
ansible -m 192.168.56.10 ping
ls
cd ansible/
ansible all -m ping
ansible -i inventory/hosts all -m ping
ansible all -m ping
cd inventory/
ansible all -m ping
ansible all -i hosts -m ping
cd ..
ls
ansible all -m ping
ansible --version
cd ..
ls
cd my_app/
ls
cd ..
cd ansible/
ls
cd inventory/
ls
cd ..
touch playbook.yaml
ansible-playbook play1.yaml 
sudo rm /etc/apt/sources.list.d/download_docker_com_linux_ubuntu.list
ansible-playbook play1.yaml 
cd ..
ls
cd ..
ls
cd vagrant/
ls
ansible-playbook play1.yaml 
cd ansible/
ansible-playbook play1.yaml 
docker --version
ls
cd ansible/
cat docker-compose.yaml 
sudo chown -R vagrant:vagrant /home/vagrant/ansible
cat docker-compose.yaml 
cd ansible/
ls
cat docker-compose.yaml 
ansible-galaxy collection install community.docker
ansible-playbook play1.yaml 
ды
ls
docker-compose build
docker compose build
docker compose --version
docker compose version
cd /home/vagrant/my_app/services/report-service/
ls
docker compose build
cd ..
cd ansible/
docker compose build
docker images
docker compose build
docker images
docker compose build
docker rmi
docker images
docker rmi
docker rmi -f
docker rm
docker --helr
docker --help
docker rmi -a
docker rmi rabbitmq:3-management-alpine 
docker rmi postgres:13-alpine 
docker images
ansible-playbook play1.yaml 
docker ls
exit
cd ..
ls
cd vagrant/
cd ansible/
docker compose up
docker ;s
docker ды
docker ls
docker ls -a
docker ps
docker ps -a
docker system prune -a
docker ps -a
docker images
watch docker images
docker images
watch docker images
watch free -h
watch docker images
watch free -h
watch docker images
docker images
watch free -h
docker images
watch docker images
watch free -h
watch docker images
dicker ps
docker ps
watch docker images
watch free -h
watch docker images
htop
top
watch docker images
watch docker ps
docker inspect ansible-rabbitmq-1
docker logs --tail 20 ansible-rabbitmq-1
docker exec ansible-rabbitmq-1 rabbitmqctl status
ls
cd ..
ls
cd my_app/
ls
newman run application_tests.postman_collection.json 
exit
ls
cd ansible/
ansible-galaxy role application init
ansible-galaxy role init application
ls
ansible-galaxy role init apache
ansible-galaxy role init postgres
exit
lks
ls
cd ansible/
ls
ansible-playbook play1.yaml 
exit
ls -;
ls -a
cd .ssh/
ls
cat id_rsa.pub 
exit
ansible-galaxy collection install community.postgresql
ls
cd ansible/
ls
cd postgres/
ls
cd templates/
ls
touch init_db.sql.j2
cd ..
ls
cd ..
ls
touch site.yaml
exit
