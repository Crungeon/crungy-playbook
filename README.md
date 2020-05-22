# Crungy Playbook

## What does this playbook do

The crungy playbook is a ansible playbook to deploy all requirements needed for the Raspberry Pi to setup and deploy crungy to docker. The playbook was designed so that if an issue occurres with a Pi or crungy needs to live on another Pi. Moving crungy will be easy. This was also used as a learning oppertunity to learn Ansible.

## How to deploy

### Prerequisits

1. Raspberry Pi has rapbian installed
2. ssh is enabled
3. ssh public key from the host the playbook will be ran is added to the pi
4. Ansible is also installed on the host thats running the playbook

### Running the playbook

#### To dry run the playbook and see what will be changed

```bash
ansible-playbook playbook.yml -i hosts -v --check --diff
```

#### Run the playbook

```bash
ansible-playbook playbook.yml -i hosts -v
```

### Trouble shooting

* If you can't reach raspberrypi.local update the hosts file to point to the Pi you are looking to run the playbook on.
