server = true
data_dir = "/opt/consul/data"
bootstrap_expect = 1

connect {
  enabled = true
}

ui_config {
  enabled = true
}
client_addr = "0.0.0.0"
bind_addr = "192.168.56.14"
advertise_addr = "192.168.56.14"