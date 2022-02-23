data "github_ip_ranges" "default" {}

resource "helm_release" "nginx_ingress_chart" {
  name       = "nginx-ingress-controller"
  namespace  = "default"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"
  set {
    name  = "service.type"
    value = "LoadBalancer"
  }
  set {
    name  = "service.annotations.kubernetes\\.digitalocean\\.com/load-balancer-id"
    value = digitalocean_loadbalancer.ingress_load_balancer.id
  }
  depends_on = [
    digitalocean_loadbalancer.ingress_load_balancer
  ]
}

resource "kubernetes_ingress" "atlantis_cluster_ingress" {
  depends_on = [
    helm_release.nginx_ingress_chart
  ]
  metadata {
    name = "${var.do_k8s_name}-atlantis-ingress"
    namespace  = "atlantis"
    annotations = {
        "kubernetes.io/ingress.class" = "nginx"
        "ingress.kubernetes.io/rewrite-target" = "/"
        "cert-manager.io/cluster-issuer" = "zerossl"
        # "ingress.annotations.nginx.ingress.kubernetes.io/whitelist-source-range" = format("%s/%s",join(",", data.github_ip_ranges.default.git_ipv4),"172.67.151.123/32")
    }
  }
  spec {
    dynamic "rule" {
      for_each = toset(var.domain_name)
      content {
        host = "${rule.value}"
        http {
          path {
            backend {
              service_name = "${replace(rule.value, ".", "-")}-atlantis-service"
              service_port = 80 
            }
            path = "/"
          }
        }
      }
    }
    dynamic "tls" {
      for_each = toset(var.domain_name)
      content {
        secret_name = "${replace(tls.value, ".", "-")}-atlantis-tls"
        hosts = ["${tls.value}"]
      }
    }
  }
}

resource "kubernetes_ingress" "oauth_cluster_ingress" {
  depends_on = [
    helm_release.nginx_ingress_chart
  ]
  for_each = toset(var.domain_name)
  metadata {
    name = "${each.key}-oauth2-ingress"
    namespace  = "oauth-proxy"
    annotations = {
        "kubernetes.io/ingress.class" = "nginx"
        "ingress.kubernetes.io/rewrite-target" = "/"
        "cert-manager.io/cluster-issuer" = "zerossl"
    }
  }
  spec {
    dynamic "rule" {
      for_each = toset(var.domain_name)
      content {
        host = "auth.${rule.value}"
        http {
          path {
            backend {
              service_name = "${replace(rule.value, ".", "-")}-oauth2-service"
              service_port = 4180
            }
            path = "/oath2"
          }
        }
      }
    }
    dynamic "tls" {
      for_each = toset(var.domain_name)
      content {
        secret_name = "${replace(tls.value, ".", "-")}-oauth-proxy-tls"
        hosts = ["auth.${tls.value}"]
      }
    }
  }
}
