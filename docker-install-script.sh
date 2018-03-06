# set up the repository
sudo apt-get update
# install packages to allow apt to use a repository over HTTPS
sudo apt-get install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common
# add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# verify that you now have the key with the fingerprint 
sudo apt-key fingerprint 0EBFCD88
# set up a stable repo
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
# install docker ce
sudo apt-get update
sudo apt-get install docker-ce
apt-cache madison docker-ce
# verify that Docker CE is installed correctly
sudo docker run hello-world
