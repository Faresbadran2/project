# Terraform Infrastructure

## Key Requirements
- **Design private AKS cluster** configuration (nodes must not have direct internet access)
- **Configure Azure Database for PostgreSQL** (managed service)
- **Plan internet accessibility** for the application (you decide how)

## Constraints
- Database must not be publicly accessible
- Use proper network segmentation
- Follow Azure security best practices

## Deliverables
- Production-ready Terraform configuration
- Appropriate use of variables and outputs
- Cost estimation and optimization notes
- Document your architectural decisions in `ARCHITECTURE.md`
