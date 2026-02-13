resource "helm_release" "headlamp" {
  name = "headlamp"
  repository = "https://kubernetes-sigs.github.io/headlamp/"
  chart = "headlamp"
  namespace = kubernetes_namespace_v1.headlamp.metadata[0].name

  values = [yamlencode({
    config = {
      inCluster = true
      enableHelm = true
      baseURL = "/headlamp"
    }
  })]
}
