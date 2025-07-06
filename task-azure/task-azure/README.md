# DevSecOps Engineer Home Assignment

## Overview

Design and configure a containerized microservices deployment for Azure Kubernetes Service (AKS) using Infrastructure as Code, demonstrating expertise in secure networking, managed databases, and CI/CD automation.

## Prerequisites

**No Azure Subscription Required**: This assignment focuses on configuration and architecture design. No actual cloud resources need to be deployed.

**Tools Needed:**
- Git for version control
- Text editor/IDE for configuration files
- Diagramming tool (draw.io, Lucidchart, or similar)

## The Application

**Microservices Architecture:**
- **Backend**: Python Flask REST API (`app/backend/`)
- **Frontend**: React SPA (`app/frontend/`)  
- **Database**: Azure Database for PostgreSQL

Both applications are provided and functional. Your task is DevOps configuration and architecture design.

## Requirements

### 🏗️ Infrastructure Design (Terraform)
- **Design private AKS cluster** configuration (nodes in private subnet)
- **Configure Azure Database for PostgreSQL** (managed service)
- **Plan secure networking** with internet exposure solution
- **Include cost optimization** considerations

### 📦 Application Deployment (Helm)
- **Create Helm charts** for both services
- **Configure backend** to use PostgreSQL instead of in-memory storage
- **Design secure database credentials** using Kubernetes Secrets
- **Plan service-to-service communication** configuration

### 🚀 CI/CD Pipeline (GitHub Actions)
- **Design CI/CD workflow** for build, test, and deployment
- **Plan authentication** strategy for private cluster deployment
- **Include security scanning** and quality gates

### 📋 Architecture Documentation
**Required deliverables:**
1. **`ARCHITECTURE.md`** explaining your design decisions and trade-offs
2. **Architecture diagram** showing infrastructure and data flow

## What We're Evaluating

**Technical Skills:**
- Infrastructure as Code (Terraform configuration quality)
- Container orchestration (Kubernetes/Helm design)
- CI/CD pipeline design
- Azure networking and security understanding

**Architecture Skills:**
- Design decision rationale
- Security-first thinking
- Trade-off analysis
- Visual communication
- Documentation quality

## Getting Started

1. **Extract** the provided assignment files
2. **Create** a new Git repository for your solution
3. **Review** the applications in `app/backend/` and `app/frontend/`
4. **Design** your architecture (diagram first!)
5. **Create** your configurations
6. **Document** your decisions

## Deliverables

**Required:**
- [ ] Complete Terraform configuration (ready to deploy)
- [ ] Helm charts for both services
- [ ] GitHub Actions workflow configuration
- [ ] `ARCHITECTURE.md` with design decisions and cost analysis
- [ ] Architecture diagram showing full solution
- [ ] Updated README with deployment instructions

**Bonus:**
- [ ] ArgoCD GitOps configuration
- [ ] Security scanning pipeline implementation
- [ ] Advanced monitoring/observability strategy

## Evaluation Criteria

Your solution will be evaluated on:
- **Configuration Quality**: Well-structured, production-ready configs
- **Security Design**: Proper private networking, secrets management
- **Architecture Thinking**: Clear rationale for design decisions
- **Documentation**: Professional-level architecture documentation
- **Cost Awareness**: Understanding of Azure pricing and optimization
- **Best Practices**: Following Terraform, Helm, and CI/CD best practices

## Submission

**Provide your solution as:**
- Git repository URL (GitHub, GitLab, etc.) with all code and documentation
- Ensure repository is publicly accessible for review

**Timeline:** 5 days

---

💡 **Tip**: Focus on creating production-ready configurations that demonstrate deep understanding of the technologies and architectural principles.

Good luck! 🚀 