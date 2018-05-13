# README

## Execute in Vagrant machine
* Install Vagrant and VirtualBox:

```# sudo pacman -S vagrant virtualbox``` (Arch based distros)

```# sudo apt-get install vagrant virtualbox``` (Debian based distros)

Or go to Vagrant [download page](https://www.vagrantup.com/downloads.html)
 
 And VirtualBox [download page](https://www.virtualbox.org/wiki/Downloads)
* Create a vagrant file:

```# vagrant init ubuntu/trustly64 ``` for x86_64

or

```# vagrant init ubuntu/trustly32 ``` for i686

* Instance a virtual machine (first run) and load machine (all times):

```# vagrant up```

* Start the box:

```# vagrant ssh```

* Init  a Rails application

```# rails new application-name --api -d your_favorite_database -T```

* Install gems:

```# bundle```

 