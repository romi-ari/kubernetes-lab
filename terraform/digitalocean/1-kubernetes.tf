resource "digitalocean_kubernetes_cluster" "romo" {
  name          = "romo-cluster"
  region        = "sgp1"
  auto_upgrade  = false
  version       = "1.29.0-do.0"
  vpc_uuid      = digitalocean_vpc.romo.id
  tags          = ["kube-lab"]

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-4gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3
    labels     = {
      "service" = "kube-lab"
    }  
  }
}