# Architecture Documentation

**Replace this template with your actual architecture decisions and reasoning.**

## Solution Overview
Brief description of your approach to deploying the application on private AKS with PostgreSQL.

## Key Design Decisions

### Infrastructure
- How you solved the private cluster + internet access challenge
- Database connectivity and security approach
- Network design choices

### Deployment
- Helm chart structure and configuration strategy
- CI/CD authentication method for private cluster
- Secret management approach

## Architecture Diagram
Include a diagram showing:
- Azure infrastructure (VNet, AKS, PostgreSQL, internet exposure)
- Kubernetes components (pods, services, ingress)
- Network flow from internet to database