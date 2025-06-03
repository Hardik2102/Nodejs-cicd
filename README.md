# DevOps CI/CD with Node.js

## Infrastructure Setup
- Terraform to provision EC2 instances (frontend, backend)
- Ubuntu, us-east-1 region
- Key Pair: test.pem

## Jenkins CI/CD
- Auto-trigger build using GitHub Webhook
- Build Docker image
- Deploy to backend EC2 instance

## App
- Simple Node.js with Express.js