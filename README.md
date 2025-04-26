# HCL-Hackthon
terraform-project/
├── dev/
│   ├── main.tf
│   ├── terraform.tfvars
├── staging/
│   ├── main.tf
│   ├── terraform.tfvars
├── prod/
│   ├── main.tf
│   ├── terraform.tfvars
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── iam/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── s3/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── dynamodb/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── ECS/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── ECR/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── ALB/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf







terraform workspace new Dev 
terraform workspace new Staging
terraform workspace new Prod
sudo mkdir modules 
cd modules/VPC
sudo vim main.tf 


