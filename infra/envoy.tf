resource "helm_release" "envoy_gateway" {
  name = "envoy-gateway"
  repository = "oci://docker.io/envoyproxy"
  chart = "gateway-helm"
  version = "v1.6.3"
  namespace = kubernetes_namespace_v1.envoy-gateway.metadata[0].name

  wait = true
  wait_for_jobs = true
  create_namespace = false

  values = [
    yamlencode({
      config = {
        envoyGateway = {
          logging = {
            level = {
              default = "info"
            }
          }
        }
      }
    })
  ]
}
