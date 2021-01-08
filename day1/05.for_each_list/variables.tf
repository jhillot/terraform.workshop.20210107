variable "gcp_instances" {
  type = list(object(
    {
      hostname   = string
      cpu        = number
      ram        = number
      hdd        = number
      zone       = string
      image_name = string
      tags       = list(string)
  }))
}
