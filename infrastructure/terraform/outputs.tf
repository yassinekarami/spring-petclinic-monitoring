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
  description = "Public IP of the ingress load balancer"
  sensitive   = false
  value       = scaleway_k8s_pool.this.nodes[0].public_ip
}
