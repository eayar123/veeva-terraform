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
  namespace   = "default"
  repository  = "oci://registry-1.docker.io/eayar"
  version     = "0.3.0"
  chart       = "nginx-hello"

  depends_on = [ module.eks ]
}

resource "helm_release" "caller" {
  name        = "caller"
  namespace   = "default"
  repository  = "oci://registry-1.docker.io/eayar"
  version     = "0.1.0"
  chart       = "caller"

  depends_on = [ module.eks ]
}
