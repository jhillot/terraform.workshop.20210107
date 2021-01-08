locals {
  firewall_policy = flatten([
    for port, sources in var.firewall_policy_map : [
      for source in sources : {
        source = source
        port   = port
      }
    ]
  ])
}

resource "google_compute_firewall" "default" {
  for_each = { for source, port in local.firewall_policy : source => port }

  name    = format("fw-%s-%s", each.value.port, replace(each.value.source, "/[./]/", "-"))
  network = "default"

  allow {
    protocol = "tcp"
    ports    = [each.value.port]
  }

  source_ranges = [each.value.source]
}
