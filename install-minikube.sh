# install minikube via shell file
#!/bin/sh
sudo lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv
sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv
sudo apt update -y
sudo apt install apt-transport-https -y
sudo apt upgrade -y
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER && newgrp docker
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
minikube start --driver=docker