# k8s-demo

Kuberentes sandbox playground for hands-on learning. Project leverages K3d and Colima to easily run a local Kubernetes cluster. Core infrastructure is deployed via a combination of OpenTofu and Helm charts.
The project leverages the Envoy Gateway API for routing external traffic into the Kubernetes cluster

### Setup
1. `mise install`
2. `mise run runtime:start`
3. `mise run cluster:create`
4.
5. `mise run apps:deploy`
6. `mise run gateway:deploy`
