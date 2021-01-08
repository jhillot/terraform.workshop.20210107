data "google_compute_image" "os_image" {
  family  = "ubuntu-2004-lts"
  project = "ubuntu-os-cloud"
}

resource "google_compute_instance" "default" {
  name                      = "corp-www-production"
  machine_type              = "f1-micro"
  zone                      = "us-central1-a"
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = data.google_compute_image.os_image.self_link
      size = data.google_compute_image.os_image.disk_size_gb + 10
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.public-subnet.name
  }

  depends_on = [
    google_storage_bucket.default
  ]

}

resource "google_storage_bucket" "default" {
  name = "photo-album-abc123abc123"
}

