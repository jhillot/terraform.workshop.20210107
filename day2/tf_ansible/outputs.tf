output "url" {
  value = "http://${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}"
}

resource "local_file" "inventory" {

  content = templatefile("inventory.cfg",
    {
      webserver_ip = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
    }
  )
  filename = "inventory"
}
