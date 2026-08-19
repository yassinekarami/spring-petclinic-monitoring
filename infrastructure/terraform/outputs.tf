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
