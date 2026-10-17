output "kubeconfig" {
  description = "The admin kubeconfig file"
  sensitive   = true
  value       = scaleway_k8s_cluster.this.kubeconfig[0].config_file
}

output "cluster_id" {
  description = "The cluster ID"
  sensitive   = true
  value       = scaleway_k8s_cluster.this.id
}

output "cluster_loadbalancer_ip" {
  description = "The cluster ip address"
  sensitive   = false
  value       = scaleway_lb_ip.this.ip_address
}
