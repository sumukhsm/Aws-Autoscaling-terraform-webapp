# AWS Auto Scaling Web Application using Terraform

## Project Overview

This project demonstrates the deployment of a highly available and fault-tolerant web application on AWS using Terraform Infrastructure as Code (IaC).

The architecture leverages Amazon EC2, Auto Scaling Groups, Application Load Balancer (ALB), Launch Templates, VPC networking, and automated web server provisioning through EC2 User Data scripts.

---

## Architecture

Internet

↓

Application Load Balancer (ALB)

↓

Target Group

↓

Auto Scaling Group (ASG)

↓

EC2 Instances

↓

User Data Automated Deployment

---

## Technologies Used

* AWS EC2
* AWS VPC
* AWS Application Load Balancer (ALB)
* AWS Auto Scaling Group (ASG)
* AWS Launch Templates
* AWS Security Groups
* AWS Route Tables
* AWS Internet Gateway
* Terraform
* Amazon Linux 2023

---

## Features

* Infrastructure deployed using Terraform
* Custom VPC and networking configuration
* Multi-AZ architecture with public subnets
* Application Load Balancer integration
* Auto Scaling Group for high availability
* Launch Template based EC2 provisioning
* Automated Apache web server installation
* Automated web page deployment using User Data
* Self-healing infrastructure through Auto Scaling
* Infrastructure customization with Terraform

---

## Resources Created

### Networking

* VPC
* Internet Gateway
* Route Table
* Public Subnet 1
* Public Subnet 2

### Security

* Security Group
* HTTP Access Rules

### Compute

* Launch Template
* EC2 Instances
* Auto Scaling Group

### Load Balancing

* Application Load Balancer
* Target Group
* Listener

---

## Terraform Files

* provider.tf
* network.tf
* security.tf
* launch-template.tf
* alb.tf
* autoscaling.tf
* outputs.tf
* userdata.sh

---

## Website Output

The deployed application displays:

AWS Auto Scaling Web Application

Infrastructure Provisioned using Terraform by Sumukh SM

Auto Scaling Instance Successfully Provisioned

Powered by EC2, Auto Scaling Group, Application Load Balancer, and Terraform

---

## Deployment Steps

### Initialize Terraform

terraform init

### Validate Configuration

terraform validate

### Review Deployment Plan

terraform plan

### Deploy Infrastructure

terraform apply

### Destroy Infrastructure

terraform destroy

---

## Auto Scaling Validation

The Auto Scaling Group was tested by terminating an EC2 instance.

Result:

* Auto Scaling detected capacity reduction
* New EC2 instance launched automatically
* Application remained accessible through Load Balancer
* Infrastructure self-healing capability verified

---

## Screenshots

### Website Output
https://github.com/sumukhsm/Aws-Autoscaling-terraform-webapp/blob/main/Screenshots/output.png

### Application Load Balancer
https://github.com/sumukhsm/Aws-Autoscaling-terraform-webapp/blob/main/Screenshots/Load%20balancer.png

### Auto Scaling Group
https://github.com/sumukhsm/Aws-Autoscaling-terraform-webapp/blob/main/Screenshots/Load%20balancer.png

### Launch Template
https://github.com/sumukhsm/Aws-Autoscaling-terraform-webapp/blob/main/Screenshots/Launch%20Template.png

### Target Group Health Check
https://github.com/sumukhsm/Aws-Autoscaling-terraform-webapp/blob/main/Screenshots/Target%20Groups.png

### Terraform Apply Success
https://github.com/sumukhsm/Aws-Autoscaling-terraform-webapp/blob/main/Screenshots/output.png
---

## Learning Outcomes

* AWS Networking Fundamentals
* High Availability Architecture
* Load Balancing Concepts
* Auto Scaling Concepts
* Infrastructure as Code (IaC)
* Terraform Resource Management
* EC2 User Data Automation
* AWS Security Group Configuration
* Fault Tolerant System Design
* Self-Healing Infrastructure

---

## Author

Sumukh SM

Infrastructure Provisioned using Terraform by Sumukh SM
