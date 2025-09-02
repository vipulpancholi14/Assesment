# Web Application Infrastructure

This Terraform code deploys a scalable web application infrastructure on AWS.

## Prerequisites

- Terraform 1.0+
- AWS account with appropriate permissions
- SSH key pair (if SSH access is needed)

## Deployment

1. Clone the repository
2. Copy `terraform.tfvars.example` to `terraform.tfvars`
3. Update the variables in `terraform.tfvars` with your values
4. Initialize Terraform: `terraform init`
5. Plan the deployment: `terraform plan`
6. Apply the configuration: `terraform apply`

## Variables

See `variables.tf` for all configurable parameters.

## Outputs

After deployment, the following outputs will be displayed:
- ALB DNS name
- Bastion host public IP
- RDS endpoint
- ACM certificate ARN

## Architecture

The infrastructure includes:
- VPC with public and private subnets across 2 AZs
- Application Load Balancer in public subnets
- Auto Scaling Group with EC2 instances in private subnets
- RDS PostgreSQL instance in private subnets
- Bastion host for SSH access
- Appropriate security groups and IAM roles
