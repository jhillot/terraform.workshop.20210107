module "gke1" {
  source  = "tfe.jhill.2741611427.workshops.arctiq.ca/simpleco/gke/google"
  version = "1.0.0"

  # insert required variables here
  cluster_name = var.cluster_name
  project_id=var.gcp_project_id

}
