resource "digitalocean_kubernetes_cluster" "romo_cluster" {
  name          = "romo_cluster"
  region        = "sgp1"
  auto_upgrade  = false
  version       = "1.29.0-do.0"
  vpc_uuid      = digitalocean_vpc.romo.id

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-4gb"
    auto_scale = false
    node_count = 3
  }
}