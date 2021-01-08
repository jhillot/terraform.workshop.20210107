policy "terraform-gcp-restrict-machine-type" {
  source            = "./gcp-restrict-machine-type.sentinel"
  enforcement_level = "hard-mandatory"
}
