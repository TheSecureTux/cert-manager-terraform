resource "cloudflare_record" "ubeeqo-sonar-test" {
  domain    = "${var.domain}"
  type      = "A"
  name      = "sonar-test.${var.domain}"
  value     = "${var.ip}"
}

