# Learn Terraform Provisioning with cloud-init
Companion code repository for learning to provision Terraform instances with `cloud-init`

Follow along on the [HashiCorp Learn platform](https://learn.hashicorp.com/tutorials/terraform/cloud-init?in=terraform/provision)

---
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.50.0 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.rtb_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.rta_subnet_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.sg_22_80](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.subnet_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [template_file.user_data](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_subnet"></a> [cidr\_subnet](#input\_cidr\_subnet) | CIDR block for the subnet | `string` | `"10.1.0.0/24"` | no |
| <a name="input_cidr_vpc"></a> [cidr\_vpc](#input\_cidr\_vpc) | CIDR block for the VPC | `string` | `"10.1.0.0/16"` | no |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | Environment tag | `string` | `"Learn"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region Terraform deploys your instance | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |

---
## Clone Repository

` git clone -b cloudinit https://github.com/hashicorp/learn-terraform-provisioning `


`cd terraform-provisioning`

# Create SSH key

- Gerando a chave ssh (Antes disso é importante que você esteja logado com sua conta aws CLI)


`ssh-keygen -t rsa -C "your_email@example.com" -f ./tf-cloud-init`


- Feito isso, vc deve adicionar sua chave ssh ".pub", dentro do  .yaml no espaço ssh_authorized_keys.

---

## criando os recursos 

`chmod a+x destroy.sh`


`chmod a+x create.sh`

- criando os recursos com a aplicação na aws
`./create.sh`

- destruindo todos os recursos na aws com a aplicação.
`./destroy.sh `

### Importante
 - Como é teste, deixamos os ips liberados, em produção, devemos liberar somente para nossa vpn ou IP pessoal,  isso para termos segurança.
 

* Referência: https://learn.hashicorp.com/tutorials/terraform/cloud-init