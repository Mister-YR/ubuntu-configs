# setup swap file for ubuntu 20.04/22.04 LTS (tested on raspberry pi4 and amd64)
# input file size via cli
#!/bin/bash
echo "Input swap file size :"
read -p "~ for example 10G =" swap_size
echo "swap size will be -" "$swap_size"
sudo fallocate -l $swap_size /swapfile1
sudo chmod 600 /swapfile1
sudo mkswap /swapfile1
echo '/swapfile1 none swap sw 0 0' | sudo tee -a /etc/fstab
echo "server will be reset in 60 seconds"
sleep 60
sudo reboot