resource "kubernetes_secret" "do_token" {
  metadata {
    name = "do-token"
  }

  data = {
    access-token = base64encode(var.do_token)
  }

  type = "kubernetes.io/basic-auth"
}