resource "helm_release" "helm" {
  name       = var.release_name
  repository = var.repository
  chart      = var.chart
  version    = var.chart_version

  namespace        = var.namespace
  create_namespace = false

  values = var.config_file_path == "" ? [] : [file(var.config_file_path)]

  dynamic "set" {
    for_each = var.config_overrides

    content {
      name  = set.key
      value = set.value
    }
  }
}
