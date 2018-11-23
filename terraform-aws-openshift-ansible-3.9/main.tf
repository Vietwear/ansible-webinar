//  Setup the core provider information.
provider "aws" {
  region  = "${var.region}"
}

//  Create the OpenShift cluster using our module.
module "openshift" {
  source          = "./modules/openshift"
  region          = "${var.region}"
  amisize         = "t2.2xlarge"    //  t2.large is smallest that meets the min specs for OS
  suffix         = "${var.suffix}"
  vpc_cidr        = "10.0.0.0/16"
  subnetaz        = "${var.subnetaz}"
  subnet_cidr     = "10.0.1.0/24"
  key_name        = "juergen-ansiblewebinar39"
  public_key_path = "${var.public_key_path}"
  cluster_name    = "openshift-cluster-juergen-ansiblewebinar39"
  cluster_id      = "openshift-cluster-juergen-ansiblewebinar39-${var.region}"
}

//  Output some useful variables for quick SSH access etc.
output "master-url" {
  value = "https://${module.openshift.master-public_ip}.xip.io:8443"
}
output "master-public_dns" {
  value = "${module.openshift.master-public_dns}"
}
output "master-public_ip" {
  value = "${module.openshift.master-public_ip}"
}
output "bastion-public_dns" {
  value = "${module.openshift.bastion-public_dns}"
}
output "bastion-public_ip" {
  value = "${module.openshift.bastion-public_ip}"
}
