resource "helm_release" "kube_prometheus_stack" {
  name = "kube-promethus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  namespace  = kubernetes_namespace_v1.monitoring.metadata[0].name

  wait = true
  wait_for_jobs = true
  create_namespace = false

  values = [
    yamlencode({
      grafana = {
        enabled = true
        "grafana.ini" = {
          server = {
            root_url            = "%(protocol)s://%(domain)s:8080/grafana"
            serve_from_sub_path = true
          }
        }
        adminPassword = "admin"
      }

      prometheus = {
        prometheusSpec = {
          retention = "7d"
        }
      }
    })
  ]
}
