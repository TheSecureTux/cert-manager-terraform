variable "domain" {
  type        = "string"
  default     = "example.com.tech"
  
}

variable "subdomain" {
  type        = "string"
  description = "Subdomain that will be used for creating wildcard DNS records."
  default     = ""
}

variable "ip" {
  type        = "string"
  description = "IP address where wildcard DNS records are going to point to."
}

