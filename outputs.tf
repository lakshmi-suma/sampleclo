output "cluster_version" {
  value=data.ibm_container_cluster.example.cluster_version
  sensitive = true
  
}