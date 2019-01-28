resource "cloudflare_record" "ubeeqo-sonar-test" {
  domain    = "${var.domain}"
  type      = "A"
  name      = "sonar-test.${var.domain}"
  value     = "${var.ip}"
}

# resource "cloudflare_record" "ubeeqo-sonar-main" {
#   domain = "${var.domain}"
#   type   = "A"
#   name   = "sonar.${var.domain}"
#   value  = "${var.ip}"
# }

