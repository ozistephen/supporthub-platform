# Platform Principles

- Everything is deployed from Git (GitOps). No manual kubectl apply in steady state.
- Infrastructure is defined as code (Terraform + Terragrunt).
- Least privilege IAM, and workloads use IRSA (no node IAM abuse).
- Dev is reproducible: one command can rebuild it.
- Observability and security are part of the platform, not “later”.
