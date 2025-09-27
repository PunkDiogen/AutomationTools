server = false
data_dir = "/opt/consul/data"

retry_join = ["192.168.56.14"]
bind_addr = "192.168.56.15"
client_addr = "0.0.0.0"
advertise_addr = "{{ GetInterfaceIP \"enp0s8\" }}"

ports {
  grpc = 8502
}

service {
  name = "api-service"
  port = 8082

  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "db-service"
            local_bind_port = 5432           
          }
        ]
      }
    }
  }
}
connect {
 enabled = true
 } 

