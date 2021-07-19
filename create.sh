#!/bin/bash
#!/bin/bash
cd terraform-provisioning/src/
rm -rf .terraform
terraform init
terraform apply --auto-approve 