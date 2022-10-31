# Ansible and OS Query

Installs OS Query on windows and linux

Runs several OS queries and returns the log file.


## Running the playbook

First, update the inventory file with your hosts.
Then, `ansible-playbook -i inventory/ -t [linux, windows, install_osquery, run_osquery] playbook.yaml


## Dependencies
This ansible assumes that you have installed the following:

* Ansible
* Ansible-playbook
* pywinrm