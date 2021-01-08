terraform {
  backend "gcs" {
    bucket = "terraform-bucket-def123xyz123"
    prefix = "my-project"
  }
}
