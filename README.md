# Laravel Server
This is intended for quickly setting up and configuring a VPS for hosting Laravel projects.
 
This project contains an Ansible script for automated server provisioning on Ubuntu 16.04.3 LTS 64-bit (Xenial Xerus).

It also includes a Vagrantfile for local testing with VirtualBox and it can be used on other servers (like VPS) as long as root access is available.

## Disclaimer
Although I test and use this project myself, no bug-free code can (ever) be promised.

I only work on this if I have some spare time and when I want to.

This is a work-in-progress learning project, but I consider it stable enough to use it myself.

Perhaps you can also use or learn something from it.

## Works on my machine
This project has been tested to work on my own setup, which includes:
* Ansible 2.4.0.0
* macOS Sierra 10.12.6
* Vagrant 2.0.0
* VirtualBox 5.1.28

Tested with a VPS from [Linode](https://www.linode.com/?r=6a89ee1940865f01ef1b3b8d7474de0396fe24a3), but should also work with [Digital Ocean](https://www.digitalocean.com/?refcode=f96f11e2656c). 

## Features ##
Currently this setup includes (at least):
* Composer 1.5.1
* Git 2.7.4
* MariaDB 10.2.8
* Nginx 1.10.3
* Node.js 6.11.2
* NPM 3.10.10
* PHP 7.1.8
* Yarn 0.27.5

## Instructions
Installation instructions for Vagrant and VPS setups.

### Vagrant
1. Run `bash ./run.sh vagrant`

### VPS
1. Create your own VPS.
1. Create a forge admin user on VPS with only SSH access (but with a sudo password).
1. Change IP-address in `./ansible/hosts` to IP of the VPS.
1. Run `bash ./run.sh live` and enter the sudo password of your forge user.

## Security Vulnerabilities
If you discover any security related issues, please contact me directly (private) instead of using the issue tracker.

## Contribute
You're welcome to contribute and/or give feedback by sending pull requests or by creating issues.

## Credits
Herman Ostendorf:
* [GitHub](https://github.com/Ostendorf)
* [Homepage](https://herman-ostendorf.nl)
* [Twitter](https://twitter.com/HermanOstendorf)

## License
This open-sourced software is licensed under the MIT license. See `LICENSE` file for details.
