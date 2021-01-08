resource "google_storage_bucket" "tf-bucket" {
  name          = "terraform-bucket-def123xyz123"
  force_destroy = true

  versioning {
    enabled = true
  }

}
