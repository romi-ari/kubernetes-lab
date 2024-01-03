# helm install argocd -n argocd --create-namespace argo/argo-cd -f terraform/values/argocd.yaml
resource "helm_release" "argocd-romo" {
    # Release name
    name = "argocd-romo"

    # Helm chart details
    repository          = "https://argoproj.github.io/argo-helm"
    chart               = "argo-cd" 
    namespace           = "argocd-romo"
    create_namespace    = true
    version             = "3.35.4"

    values = [file("values/argocd.yaml")]
}