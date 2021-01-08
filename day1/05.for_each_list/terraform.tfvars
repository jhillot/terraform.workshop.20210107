gcp_instances = [
  {
    hostname   = "prod-webserver"
    cpu        = 2
    ram        = 4
    hdd        = 40
    zone       = "us-central1-a"
    image_name = "debian-cloud/debian-9"
    tags       = ["prod", "http", "https"]
  },
  {
    hostname   = "dev-webserver"
    cpu        = 1
    ram        = 2
    hdd        = 40
    zone       = "us-east1-b"
    image_name = "debian-cloud/debian-9"
    tags       = ["dev", "qa", "http"]
  }
]
