# Terraform AWS Networking Infrastructure

A practical **Infrastructure as Code (IaC)** project using Terraform to design and manage a basic AWS networking environment.

## Project Overview

This project demonstrates how Terraform can be used to define AWS networking infrastructure as code.

The infrastructure includes a VPC, public subnet, Internet Gateway, route table, route table association, and a security group.

The project was built incrementally and tested using Terraform's standard workflow.

## Architecture

```text
                         Internet
                             │
                             ▼
                    Internet Gateway
                             │
                             ▼
                    ┌────────────────┐
                    │      VPC       │
                    │  10.0.0.0/16   │
                    │                │
                    │  ┌───────────┐ │
                    │  │  Public   │ │
                    │  │  Subnet   │ │
                    │  │10.0.1.0/24│ │
                    │  └─────┬─────┘ │
                    │        │       │
                    │  Route Table   │
                    │        │       │
                    │ Security Group │
                    └────────────────┘
```

## Infrastructure Components

| Component               | Purpose                                           |
| ----------------------- | ------------------------------------------------- |
| VPC                     | Provides the isolated AWS network                 |
| Public Subnet           | Provides a subnet inside the VPC                  |
| Internet Gateway        | Provides internet connectivity for the VPC        |
| Route Table             | Defines the route for internet traffic            |
| Route Table Association | Associates the route table with the public subnet |
| Security Group          | Controls inbound and outbound traffic             |

## Technologies

* Terraform
* Amazon Web Services (AWS)
* Git
* GitHub
* Infrastructure as Code (IaC)

## Terraform Concepts Demonstrated

This project demonstrates:

* Terraform providers
* Resources
* Resource references
* Implicit dependencies
* Input variables
* Outputs
* Security groups
* AWS networking
* Terraform state
* `.gitignore`
* Terraform formatting
* Configuration validation
* Terraform planning
* Git version control
* GitHub repository management

## Project Structure

```text
terraform-aws-infrastructure/
│
├── .gitignore
├── .terraform.lock.hcl
├── README.md
├── main.tf
├── variables.tf
├── outputs.tf
├── subnet.tf
├── internet_gateway.tf
├── route_table.tf
└── security_group.tf
```

## Terraform Workflow

The project follows the standard Terraform workflow:

```text
Terraform Configuration
          │
          ▼
    terraform init
          │
          ▼
    terraform fmt
          │
          ▼
  terraform validate
          │
          ▼
    terraform plan
          │
          ▼
   terraform apply
```

The configuration was successfully initialized, formatted, validated, and planned.

## Validation

Terraform validation completed successfully:

```text
Success! The configuration is valid.
```

The final Terraform plan contains:

```text
Plan: 6 to add, 0 to change, 0 to destroy.
```

## AWS Permissions

The project was developed in a restricted training AWS environment.

The AWS account used for training does not provide sufficient permissions to create the required VPC infrastructure. Therefore, `terraform apply` was not executed in the training environment.

This demonstrates an important distinction between:

* Terraform configuration
* Terraform validation and planning
* AWS IAM authorization

The Terraform configuration itself was successfully validated and planned.

## Security

Sensitive and local Terraform files are excluded from the Git repository using `.gitignore`.

The following are not committed:

```text
.terraform/
*.tfstate
*.tfstate.*
*.tfvars
```

AWS credentials and other sensitive information are not stored in this repository.

## Learning Objectives

The main objectives of this project were to:

1. Build practical Terraform skills.
2. Understand AWS VPC networking.
3. Practice Terraform resource dependencies.
4. Work with variables and outputs.
5. Understand AWS security groups.
6. Practice the Terraform workflow.
7. Use Git and GitHub professionally.
8. Build a practical Cloud Engineering portfolio project.

## Future Improvements

Possible future extensions include:

* EC2 instance
* Private subnet
* NAT Gateway
* Load Balancer
* Multiple availability zones
* Terraform modules
* Remote Terraform state

## Author

**Khadim Hussain Bahonar**

Cloud Computing & Infrastructure as Code learner, focusing on **AWS, Terraform, Linux, and Cloud Engineering**.
