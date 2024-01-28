resource "digitalocean_vpc" "romo" {
  name     = "romo_vpc"
  region   = "sgp1"
  ip_range = "192.168.1.0/24"
}