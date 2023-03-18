# Firewall - pfsense CE 2.6
Project with Packer and Ansible scripts to create a pfSense template on Proxmox from an ISO file with the bare minimum packages and updates.

Run the command in the terminal:
```bash
  ansible-playbook template.yml -e "hostname=pfsense-CE-2.6"
  ansible-playbook kvm_setup.yml -e "node=kvm-07 vm_id=900 hotplug=disk,network,cpu"
```

# Created by: 

1. Luciano Sampaio.
