resource "helm_release" "cert-manager-romo" {
    # Release name
    name                = "cert-manager-romo" 
    
    # Helm chart details
    repository          = "https://charts.jetstack.io"
    chart               = "cert-manager"
    namespace           = "cert-manager-romo"
    version             = "1.13.3"
    create_namespace    = true

    set {
        name  = "installCRDs"
        value = "true"
    }

}
