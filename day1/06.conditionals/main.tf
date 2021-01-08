resource "google_compute_instance" "default" {
  count = var.create_instance ? 1 : 0

  name         = "my-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

}
