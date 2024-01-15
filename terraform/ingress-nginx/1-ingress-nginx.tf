resource "helm_release" "ingress-nginx-romo" {
    # Release name
    name                = "ingress-nginx-romo" 
    
    # Helm chart details
    repository          = "https://kubernetes.github.io/ingress-nginx"
    chart               = "ingress-nginx"
    namespace           = "ingress-nginx-romo"
    version             = "4.9.0"
    create_namespace    = true

    values = [file("values/ingress-class.yaml")]

    set {
        name  = "controller.publishService.enabled"
        value = "true"
    }

}
