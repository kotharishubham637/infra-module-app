🚀 Multi-Environment Infrastructure with Terraform Modules

Provision Development, Staging, and Production environments on AWS using reusable Terraform modules.

<p align="center"> <img src="https://img.shields.io/badge/Terraform-v1.15+-623CE4?style=for-the-badge&logo=terraform"> <img src="https://img.shields.io/badge/AWS-EC2-FF9900?style=for-the-badge&logo=amazonaws"> <img src="https://img.shields.io/badge/IaC-Infrastructure_as_Code-blue?style=for-the-badge"> <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge"> </p>
📌 Project Overview

This project demonstrates how to provision multiple AWS environments using Terraform Modules.

Instead of duplicating infrastructure code, a reusable module is created and instantiated three times for:

🟢 Development (Dev)
🟡 Staging (Stg)
🔴 Production (Prod)

Each environment has its own configuration while sharing the same infrastructure module.

🏗 Architecture
                     Terraform Root Module
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
        ▼                    ▼                    ▼
   Dev Module          Staging Module        Prod Module
        │                    │                    │
        ▼                    ▼                    ▼
     EC2 Instance        EC2 Instance       EC2 Instances
          │                  │                  │
          ├──────────────► Security Group ◄─────┤
                             │
                             ▼
                           AWS VPC
📂 Project Structure
.
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
│
└── infra-module-app
    └── infra-app
        ├── ec2.tf
        ├── s3.tf
        ├── dynamodb.tf
        ├── security-group.tf
        ├── variables.tf
        └── outputs.tf
⚙️ Technologies Used
Terraform
AWS EC2
AWS S3
AWS DynamoDB
AWS VPC
Security Groups
Infrastructure as Code (IaC)
🌍 Environments
Environment	Instance Count	Instance Type
Dev	1	t2.micro
Staging	1	t2.small
Production	2	t2.medium
🚀 Deployment

Initialize Terraform

terraform init

Validate

terraform validate

Plan

terraform plan

Apply

terraform apply

Destroy

terraform destroy
📦 Features
Reusable Terraform Modules
Multi-environment deployment
Separate Dev / Staging / Production
Parameterized infrastructure
Easy scalability
Infrastructure as Code
Modular architecture
📖 Learning Objectives

This project demonstrates:

Terraform Modules
Variables
Outputs
Resource Reusability
Multi-environment Infrastructure
AWS Infrastructure Provisioning
Infrastructure Automation
📸 Architecture Diagram

Replace this with your own architecture image.

/images/architecture.png
📊 Future Improvements
Terraform Remote Backend (S3 + DynamoDB)
GitHub Actions CI/CD
Jenkins Pipeline
Ansible Integration
Monitoring using Prometheus & Grafana
Kubernetes Deployment
Auto Scaling Group
Load Balancer
👨‍💻 Author

Shubham Kothari

AWS & DevOps Enthusiast
Terraform | Docker | Kubernetes | Jenkins | Linux
⭐ If you found this project useful, don't forget to Star the repository!
