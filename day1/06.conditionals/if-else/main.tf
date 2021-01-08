resource "google_compute_instance" "production" {
  count = var.is_development ? 0 : 1

  name         = "prod-${var.system_name}"
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

resource "google_compute_instance" "development" {
  count = var.is_development ? 1 : 0

  name         = "dev-${var.system_name}"
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
