variable "cluster_context" {
  description = "Kubernetes cluster context to use when applying commands"
  type = string
  default = "k3d-demo"
}

variable "cluster_config" {
  description = "resource folder containing Kubernetes cluster configuration"
  type = string
  default = "~/.kube/config"
}
