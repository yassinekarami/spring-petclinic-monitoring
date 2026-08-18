resource "scaleway_k8s_cluster" "this" {
  cni                         = "calico"
  delete_additional_resources = true
  name                        = "${local.name}-k8s"
  version                     = "1.36.0"
  private_network_id          = scaleway_vpc_private_network.this.id
  tags                        = local.tags

}


resource "scaleway_k8s_pool" "this" {
  cluster_id = scaleway_k8s_cluster.this.id
  name       = "main"
  node_type  = "BASIC3-X2C-4G"
  size       = 1
  autoscaling = false
  autohealing = true
  min_size = 1
  max_size = 1

  wait_for_pool_ready = true
}
