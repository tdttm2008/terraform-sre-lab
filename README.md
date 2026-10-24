# terraform-sre-lab

Hands-on Terraform lab on AWS, built while working toward the **HashiCorp Certified: Terraform Associate (004)** and an SRE career path.

## Layout

```
envs/dev/            root module for the dev environment (state in HCP Terraform)
modules/             reusable child modules
.github/workflows/   CI: fmt + validate on every PR/push
```

## Getting started

```bash
cd envs/dev
cp terraform.tfvars.example terraform.tfvars   # optional overrides
terraform init
terraform plan
terraform apply
```

Requires Terraform >= 1.10 and AWS credentials (e.g. `aws configure` / `AWS_PROFILE`). Never commit credentials, state, or real `.tfvars`.

## Labs

| # | Lab | Topics |
|---|-----|--------|
| 01 | Caller identity sanity check | providers, data sources, outputs, core workflow |

## Exam topic checklist

Check against the official exam objectives on the HashiCorp certification page.

- [ ] IaC concepts and Terraform's purpose
- [ ] Core workflow: `init` / `plan` / `apply` / `destroy`, `fmt`, `validate`
- [ ] Providers, version constraints, dependency lock file
- [ ] Variables, outputs, locals, validation, sensitive values
- [ ] Resources, data sources, meta-arguments (`count`, `for_each`, `depends_on`, `lifecycle`)
- [ ] Modules: sources, inputs/outputs, versioning
- [ ] State: remote state, locking, `terraform state` commands, `import`, `moved` / `removed` blocks
- [ ] HCP Terraform: `cloud` block, workspaces, CLI vs VCS workflows, variables/variable sets
- [ ] Debugging and troubleshooting (`TF_LOG`, drift, `-refresh-only`)
