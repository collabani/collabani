# collabani


### Install

```
cd /tmp
wget --directory-prefix=/tmp http://download.virtualbox.org/virtualbox/5.0.10/virtualbox-5.0_5.0.10-104061~Debian~jessie_amd64.deb
sudo dpkg -i virtualbox-5.0_5.0.10-104061~Debian~jessie_amd64.deb

cd /srv
git clone https://github.com/collabani/collabani.git
cd /collabani
sudo vagrant up
sudo vagrant ssh
```
