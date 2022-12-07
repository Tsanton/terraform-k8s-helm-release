variable "release_name" {
  description = "The name the helm instance will take inside the cluster (helm list --all)"
  type        = string
}

variable "repository" {
  description = "The url to the chart repository"
  type        = string
}

variable "chart" {
  description = "The name of the chart (see chart.yaml)"
  type        = string
}

variable "chart_version" {
  description = "The version of the chart to install"
  type        = string
}

variable "namespace" {
  description = "The namespace to deploy resources into"
  type        = string
}

variable "config_file_path" {
  description = "The (optional) path to any variables.yaml file to override default configs with"
  type        = string
  default     = ""
}

variable "config_overrides" {
  description = "A map[string]interface{} of overrides to apply to the config file where the key equates to `path.to.key`"
  type        = map(string)
  default     = {}
}
