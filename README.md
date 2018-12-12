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
(`--become` executes the role with root privileges)

## Self-healing applications with Ansible and Dynatrace

### Application

The application shown in the demo can be found in the `manifest-sockshop` folder.

### Playbooks

All playbooks can be found in the `playbooks` folder.

## Links & Resources

- Set up Ansible Tower with Dynatrace to enable your self-healing applications
https://www.dynatrace.com/news/blog/set-up-ansible-tower-with-dynatrace-to-enable-your-self-healing-applications/ 
- Self-healing: Ansible Tower fixes Dynatrace-detected problems in real time https://www.dynatrace.com/news/blog/self-healing-ansible-tower-fixes-dynatrace-detected-problems-in-real-time/ 
- Enable self-healing applications with Ansible and Dynatrace https://www.ansible.com/blog/enable-self-healing-applications-with-ansible-and-dynatrace 
- Dynatrace roles in Ansible Galaxy
https://galaxy.ansible.com/dynatrace and 
https://galaxy.ansible.com/dynatrace_innovationlab 
- Dynatrace free trial 
http://dynatrace.com/trial 
