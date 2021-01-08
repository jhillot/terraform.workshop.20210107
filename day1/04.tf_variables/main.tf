locals {
  name_suffix = "${var.instance_name}-${var.environment}"
}

resource "google_compute_instance" "default" {
  name         = local.name_suffix
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

}
