resource "helm_release" "monitoring" {
    # Release name
    name                = "monitoring" 
    
    # Helm chart details
    repository          = "https://prometheus-community.github.io/helm-charts"
    chart               = "kube-prometheus-stack"
    namespace           = "monitoring"
    version             = "55.6.0"
    create_namespace    = true

    values = [file("values/prometheus.yaml")]
}
