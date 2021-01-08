# Configure VPC
resource "google_compute_network" "public-network" {
  name                    = "public-network"
  auto_create_subnetworks = false

}

# Configure subnetwork
resource "google_compute_subnetwork" "public-subnet" {
  name          = "public-subnet"
  ip_cidr_range = "10.10.0.0/24"
  network       = google_compute_network.public-network.id
  region        = "us-central1"
}
