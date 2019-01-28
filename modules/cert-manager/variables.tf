variable "name" {
  type        = "string"
  description = "Name for this cert-manager release"
  default     = "cert-manager"
}

variable "subdomain" {
  type        = "string"
  description = "Subdomain for ubiqoo.tech domains for which certificate needs to be created."
  default     = ""
}

variable "environment" {
  type        = "string"
  description = "Name of the environment."
  default     = "test"
}
    