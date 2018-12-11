# Webinar: Deployment Automation and Self-Healing with Dynatrace & Ansible

In this repo you will find resources that have been presented in the joint webinar between Dynatrace and Ansible.

Link to the original webinar registration:
https://www.ansible.com/resources/webinars-training/deployment-automation-and-self-healing-with-dynatrace-and-ansible


## Deployment Automation

With the Dynatrace OneAgent role from Ansible Galaxy you can deploy the Dynatrace OneAgent on hundreds of hosts within a couple of minutes.

Link: https://galaxy.ansible.com/dynatrace/oneagent 

Demo execution from you local machine:
```
$ ansible-playbook oneagent.yml -i inventory --private-key ansible-test.pem --become
```
(--become executes the role with root privileges)

## Self-healing applications with Ansible and Dynatrace




