# Configure instance
resource "google_compute_instance" "default" {
  name         = "webserver"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  # Tag instance for firewall assignment
  tags = ["web"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  # Add networking to instance
  network_interface {
    network = "default"
    access_config {
    }
  }

  # Upload SSH keys for access
  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.public_key)}"
  }

}
