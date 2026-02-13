resource "kubernetes_namespace_v1" "apps" {
  metadata {
    name = "apps"
    labels = {
      team = "apps"
      env = "dev"
      managed_by = "opentofu"
    }
  }
}

resource "kubernetes_namespace_v1" "envoy-gateway" {
  metadata {
    name = "envoy-gateway"
    labels = {
      env = "dev"
      managed_by = "opentofu"
    }
  }
}

resource "kubernetes_namespace_v1" "headlamp" {
  metadata {
    name = "headlamp"
    labels = {
      env = "dev"
      managed_by = "opentofu"
    }
  }
}

resource "kubernetes_namespace_v1" "monitoring" {
  metadata {
    name = "monitoring"
    labels = {
      env = "dev"
      managed_by = "opentofu"
    }
  }
}
