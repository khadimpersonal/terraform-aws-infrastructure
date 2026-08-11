# Terraform AWS Infrastructure

A hands-on Infrastructure as Code project built with **Terraform** to provision and manage AWS infrastructure.

## Project Overview

This project demonstrates how to use Terraform to define AWS infrastructure as code in a reusable and maintainable way.

The infrastructure is designed to include a VPC and supporting AWS networking components. The project is being developed incrementally while practicing Terraform configuration, variables, outputs, validation, planning, version control, and GitHub workflows.

## Technologies

* Terraform
* AWS
* AWS VPC
* Git
* GitHub
* Infrastructure as Code (IaC)

## Current Architecture

The planned infrastructure is:

```text
                    AWS
                     │
                    VPC
                     │
              ┌──────┴──────┐
              │             │
        Public Subnet    Route Table
              │
             EC2
              │
       Security Group
              │
       Internet Gateway
```

## Terraform Concepts Demonstrated

This project currently demonstrates:

* Terraform providers
* Terraform resources
* Input variables
* Resource outputs
* Terraform state management
* `terraform init`
* `terraform fmt`
* `terraform validate`
* `terraform plan`
* Git version control
* GitHub repository management

Additional Terraform concepts will be added as the project develops.

## Project Structure

```text
terraform-aws-infrastructure/
│
├── .gitignore
├── .terraform.lock.hcl
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Terraform Workflow

The project follows the standard Terraform workflow:

```text
Write Configuration
        ↓
terraform init
        ↓
terraform fmt
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
Verify Infrastructure
```

The configuration has been successfully initialized, formatted, validated, and planned.

## Current AWS Environment

The project is currently being developed using a restricted training AWS environment.

The AWS account does not currently provide permission to create VPC resources, so `terraform apply` cannot be completed in the training environment.

The Terraform configuration itself has been successfully validated and planned.

When an AWS environment with the required permissions is available, the infrastructure can be deployed and verified.

## Security

No AWS credentials, passwords, or sensitive Terraform state files are stored in this repository.

The `.gitignore` file is configured to prevent sensitive or local Terraform files from being committed accidentally.

## Learning Goals

The main goals of this project are:

1. Build practical Terraform skills.
2. Understand AWS networking through Infrastructure as Code.
3. Practice Terraform configuration and troubleshooting.
4. Use Git and GitHub professionally.
5. Build a portfolio project demonstrating Cloud Engineering skills.

## Author

**Khadim Hussain Bahonar**

This project was created as part of my practical learning in **Cloud Computing, AWS, Terraform, and Infrastructure as Code**.
