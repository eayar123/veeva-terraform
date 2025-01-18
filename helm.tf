provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }

  registry {
    url      = "oci://registry-1.docker.io/eayar"
    username = var.username
    password = var.password
  }
}

resource "helm_release" "nginx-hello" {
  name        = "nginx-hello"
  namespace   = var.namespace
  repository  = "oci://registry-1.docker.io/eayar"
  version     = var.nginx_version
  chart       = "nginx-hello"

  depends_on = [ module.eks ]
}

resource "helm_release" "caller" {
  name        = "caller"
  namespace   = var.namespace
  repository  = "oci://registry-1.docker.io/eayar"
  version     = var.caller_version
  chart       = "caller"

  depends_on = [ module.eks ]
}
