server = false
data_dir = "/opt/consul/data"

retry_join = ["192.168.56.14"]
bind_addr = "192.168.56.16"
client_addr = "0.0.0.0"
advertise_addr = "{{ GetInterfaceIP \"enp0s8\" }}"

ports {
  grpc = 8502
}

service {
  name = "db-service"
  port = 5432

  connect {
   sidecar_service {}
 }

}

connect {
 enabled = true
 } 

