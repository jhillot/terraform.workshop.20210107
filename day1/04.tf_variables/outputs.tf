output "webserver-ip" {
  value       = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
  description = "Public IP address of our webserver instance."
}
