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

data "ibm_cointainer_cluster" "example"{
  id="cgfu01bd0so0s4b4mncg"
}

output "version" {
  value=data.ibm_cointainer_cluster.example.version
}