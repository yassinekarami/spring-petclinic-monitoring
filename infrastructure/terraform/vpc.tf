resource "scaleway_vpc_private_network" "this"{
  name="${local.name}-pn"
  tags = local.tags

  ipv4_subnet {
    subnet = "10.100.0.0/22"
  }
}
