output "cluster_version" {
  value=data.ibm_container_cluster.example.version
  sensitive = true
  
}