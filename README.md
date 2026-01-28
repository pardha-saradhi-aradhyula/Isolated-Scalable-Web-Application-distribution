# Isolated-Scalable-Web-Application-distribution
VPC-Isolated Scalable Web Application using ALB &amp; ASG

📌 Project Overview: Highly Available Web Application using ALB & ASG

This project demonstrates the deployment of a highly available and scalable web application architecture on AWS using core networking and compute services. The infrastructure is designed within a custom VPC and leverages an Application Load Balancer (ALB) and Auto Scaling Group (ASG) to ensure fault tolerance, scalability, and continuous availability.
The web application is hosted on Amazon EC2 instances (Amazon Linux 2) running behind an ALB, which distributes incoming HTTP traffic evenly across multiple Availability Zones.

🏗️ Architecture Components
🔹 Networking
Custom VPC: 10.0.0.0/16
Public Subnets:
Public-Subnet-1a → 10.0.1.0/24
Public-Subnet-1b → 10.0.2.0/24
Internet Gateway attached to the VPC
Public Route Table with:
0.0.0.0/0 → Internet Gateway
Subnets associated with the public route tabl.

🔹 Load Balancing
Application Load Balancer (ALB):
Name: Web-ALB
Deployed across ap-south-1a & ap-south-1b
Listens on HTTP (Port 80)
ALB Security Group:
Allows HTTP traffic from 0.0.0.0/0


🔹 Compute & Scaling

Target Group:
Type: EC2 Instances
Protocol: HTTP | Port: 80

Health check path: /
Launch Template (Web-LT):
AMI: Amazon Linux 2
Instance Type: t2.micro
Auto-assign Public IP: Enabled

Security Group:
HTTP (80) → Anywhere
SSH (22) → Restricted to admin IP

Auto Scaling Group (ASG):
Desired Capacity: 2
Minimum: 1
Maximum: 3
Health Checks: ELB + EC2

🚀 Key Features

High availability across multiple Availability Zones
Automatic scaling based on traffic demand
Load-balanced traffic distribution using ALB
Health checks and self-healing infrastructure
Secure access with controlled security groups
Production-style AWS architecture using best practices

AWS Services Used

Amazon VPC
Amazon EC2
Application Load Balancer (ALB)
Auto Scaling Group (ASG)
Launch Templates
Security Groups
Target Groups
Internet Gateway
Subnets
Internet gateway

Gateway

🎯 Use Case

This project is ideal for:
Hosting scalable web applications
Demonstrating real-world AWS infrastructure design
Showcasing cloud engineering skills for entry-level AWS roles
