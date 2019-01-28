resource "helm_release" "cert-manager" {
  name       = "cert-manager"
  repository = "/../../helm"
  namespace  = "system"
  chart      = "cert-manager"
  #version    = "v0.3.2"
  keyring    = ""
  
  values = [
    <<EOF
ingressShim:
  enabled: false
EOF
    ,
  ]
}
resource "helm_release" "certificates" {
  name       = "certificates"
  repository = "../../../helm"
  chart      = "certificates"
  namespace  = "system"
  #version    = "0.1.8"
  keyring    = ""

  depends_on = ["helm_release.cert-manager"]

#   values = [

#   ]
}