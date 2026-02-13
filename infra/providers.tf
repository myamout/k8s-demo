provider "kubernetes" {
  config_path = var.cluster_config
  config_context = var.cluster_context
}

provider "helm" {
  kubernetes = {
    config_path = var.cluster_config
    config_context = var.cluster_context
  }
}
