# AWS Secure Cloud Infrastructure via Terraform

This repository contains Infrastructure as Code (IaC) written in Terraform to automate the deployment of a secure data encryption environment on AWS.

## 🛡️ Security Features Implemented
* **AWS KMS Master Key:** Created a customer-managed KMS key for centralized cryptographic control.
* **Storage Encryption:** Deployed an Amazon EBS Volume with mandatory encryption enabled (`encrypted = true`).
* **Resource Linking:** Dynamically associated the EBS volume with the custom KMS key using Terraform resource referencing (`aws_kms_key.secure_project_key.arn`).
* **Resource Tagging:** Implemented standard tagging structures for production environment tracking.

## 🚀 Architecture Components
* `provider.tf` / `main.tf` - Defines the AWS provider configuration (us-east-1).
* `aws_kms_key` & `aws_kms_alias` - Deploys the master key and its readable alias.
* `aws_ebs_volume` - Deploys the secure storage resource.

## 🛠️ Tools Used
* **Terraform** (Infrastructure as Code)
* **AWS CloudShell / CLI**
* **Git & GitHub**# aws-secure-cloud-environment
"Automating a secure AWS infrastructure with Envelope Encryption (KMS), encrypted EBS volumes, and strict IAM roles using Terraform."
