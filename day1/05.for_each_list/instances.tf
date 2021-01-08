resource "google_compute_instance" "instance" {
  for_each = { for instance in var.gcp_instances : instance.hostname => instance }

  name         = each.value.hostname
  machine_type = "custom-${each.value.cpu}-${each.value.ram * 1024}"
  zone         = each.value.zone

  tags = toset(each.value.tags)

  boot_disk {
    initialize_params {
      image = each.value.image_name
      size  = each.value.hdd
    }
  }

  network_interface {
    network = "default"
  }
}
