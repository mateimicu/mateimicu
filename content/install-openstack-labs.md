---
title: "Install Openstack Labs"
date: 2018-04-14T00:55:44+03:00
draft: false 
---
Openstack Training Labs is a python project that installs a new OpenStack cluster in two virtual machines.
It is an easy way to provision a working deployment for testing/development purposes.

It works like docker-machine or boot2docker: 

* spawn two VM's using a guest Hyper-visor (supports VirtualBox and KVM)
* copy bash scripts in the machine and run it (this will install the OpenStack Components)
* port-forward some services from the NAT provided by the Hyper-visor to the guest machine

All the documentation can be found [here](1), it goes in greater details about the setup.

## Step by Step Guide
Following the provided documentation on a 

##### Install dependency
To use this project we need to have a few dependencies satisfied:

**VirtualBox**

This will install the VirtualBox utility and a graphical Interface that we can use
```bash
~ $ sudo apt-get install virtualbox virtualbox-qt
```

**Git**

```bash
~ $ sudo apt-get git
```

**Python**
This is usually already installed in most distributions.
```bash
~ $ sudo apt-get install python2.7
```

##### Clone the project
The project is hosted on [Gerrit](2) but all the OpenStack project have mirrors on [GitHub](3).
```bash
~ $ git clone https://github.com/openstack/training-labs.git
~ $ cd training-labs/labs
```
We need to use the latest release of OpenStack.(You can check the OpenStack releases [here][4])
```
~ $ git checkout stable/queens
```

##### Start the cluster
We should have a tree structure like this
```bash
~ $ ls
autostart  config  lib  log  osbash  scripts  stacktrain  st.py  tests  tools  wbatch
```

We can run the provisioning with the following command
```bash
~ $ ./st.py --verbose --gui gui --provider virtualbox --build cluster
```
This process may take some time depending on your hardware and network speed.



[1]: https://wiki.openstack.org/wiki/Documentation/training-labs#About_Training_Labs
[2]: http://git.openstack.org/cgit/openstack/training-labs
[3]: https://github.com/openstack
[4]: https://releases.openstack.org/

