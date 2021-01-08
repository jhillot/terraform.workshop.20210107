resource "google_compute_instance" "prod-instance" {
  name         = "instance01"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

}
