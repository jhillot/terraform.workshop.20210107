resource "google_compute_instance" "default" {
  name         = var.system_name
  machine_type = "f1-micro"
  zone         = format("%.1s", var.system_name) == "p" ? "us-east1-b" : "us-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

}
