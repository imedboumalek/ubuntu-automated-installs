 # https://docs.docker.com/engine/install/ubuntu/
 # Update the apt package index and install packages 
 # to allow apt to use a repository over HTTPS:
 sudo apt-get update
 sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
# Add Docker’s official GPG key:
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg   
# Use the following command to set up the stable repository.
# To add the nightly or test repository, add the word 
# nightly or test (or both) after the word stable in the commands below. 
# Note: The lsb_release -cs sub-command below returns the name of your Ubuntu distribution, such as xenial. Sometimes,
# in a distribution like Linux Mint, you might need to change $(lsb_release -cs) to your parent Ubuntu distribution.
# For example, if you are using Linux Mint Tessa, you could use bionic. Docker does not offer any guarantees on untested 
# and unsupported Ubuntu distributions.
 echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install Docker engine
  sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io

# verify the installation 
sudo docker run hello-world

# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
# Uncomment the following to run docker withou sudo
# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker
# docker run hello-world
