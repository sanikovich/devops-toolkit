# infra-toolkit

A personal collection of infrastructure automation tools, scripts, templates, and operational utilities.

This repository serves as a centralized toolbox for managing servers, development environments, deployments, monitoring, and day-to-day system administration tasks.

---

## Goals

- Centralize infrastructure automation
- Reuse scripts across projects
- Standardize operational workflows
- Keep configuration templates organized
- Build a long-term knowledge base

---

## Repository Structure

```text
infra-toolkit/

├── powershell/
│   ├── modules/
│   └── scripts/
│
├── linux/
│   ├── bash/
│   └── alma-linux/
│
├── centminmod/
│   ├── scripts/
│   └── configs/
│
├── docker/
│
├── nginx/
│
├── ruby/
│
├── terraform/
│
├── monitoring/
│
├── utils/
│
├── configs/
│
└── docs/
```

---

## Directory Overview

| Directory | Purpose |
|------------|------------|
| powershell | Windows and PowerShell automation |
| linux | Linux administration and automation |
| centminmod | Centmin Mod server management |
| docker | Container deployment and management |
| nginx | Nginx templates and configuration |
| ruby | Ruby automation and utilities |
| terraform | Infrastructure as Code |
| monitoring | Monitoring and diagnostics |
| utils | Shared helper scripts |
| configs | Configuration templates |
| docs | Documentation and notes |

---

## Principles

### Reusability

Scripts should be reusable and modular.

### Documentation

Every significant automation task should be documented.

### Security

Never store:

- passwords
- API keys
- access tokens
- certificates
- private credentials

Use:

- environment variables
- secret managers
- credential stores

### Version Control

All changes should be tracked through Git.

---

## Future Plans

- CI/CD validation
- PSScriptAnalyzer integration
- ShellCheck integration
- Terraform validation
- Ansible playbooks
- Kubernetes automation

---

## License

Private repository.
