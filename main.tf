resource "ibm_container_cluster" "testacc_cluster" {
  name            = "test"
  datacenter      = "dal10"
  machine_type    = "free"
  hardware        = "shared"
  public_vlan_id  = "vlan"
  private_vlan_id = "vlan"
  subnet_id       = ["1154643"]

  default_pool_size = 1

  labels = {
    "test" = "test-pool"
  }
}

data "ibm_container_cluster" "example"{
  cluster_name_id="test"
}

output "version" {
  value=data.ibm_container_cluster.example.version
}