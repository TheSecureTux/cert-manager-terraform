# cert-manager-terraform

This is simply a sample on how I implemented cert-manager in our infraestrtructure using Terraform and a Helm chart. While pretty basic it might be useful to somebody so here it is.

The sample infra in the repo asumes a main.tf file that is used to load the module "cert-manager", which installs two helm charts:

- cert-manager ) (https://github.com/jetstack/cert-manager ) : Is a copy of the stable chart you can find on the official helm repositories and meant to be left as is. Any customization willbe injected in the yaml when calling the "helm_resource" if needed

- certificates : A chart meant to hold the custom resources and configurations. Each certificate to be installed on an ingress endpoint will have its own template file, as well as the "clusterissuer" that will be responsible to contact letsencrypt for the ACME challenges and issue and install the certificates as needed, while keeping the RSA keys as k8s secrets safe inside the cluster.

WIP.

