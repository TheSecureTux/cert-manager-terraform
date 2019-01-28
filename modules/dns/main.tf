resource "cloudflare_record" "example.com-sonar-test" {
  domain    = "${var.domain}"
  type      = "A"
  name      = "sonar-test.${var.domain}"
  value     = "${var.ip}"
}

