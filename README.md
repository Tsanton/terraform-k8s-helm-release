# **terraform-k8s-helm-release**

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >=2.6.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >=2.6.0, < 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.helm](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart"></a> [chart](#input\_chart) | The name of the chart (see chart.yaml) | `string` | n/a | yes |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | The version of the chart to install | `string` | n/a | yes |
| <a name="input_config_file_path"></a> [config\_file\_path](#input\_config\_file\_path) | The (optional) path to any variables.yaml file to override default configs with | `string` | `""` | no |
| <a name="input_config_overrides"></a> [config\_overrides](#input\_config\_overrides) | A map[string]interface{} of overrides to apply to the config file where the key equates to `path.to.key` | `map(string)` | `{}` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to deploy resources into | `string` | n/a | yes |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | The name the helm instance will take inside the cluster (helm list --all) | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | The url to the chart repository | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
