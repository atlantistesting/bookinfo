locals {
  name      = "${var.do_k8s_name}-${random_id.cluster_name[1]}"
}

resource "random_id" "cluster_name" {
  count       = var.enable_digitalocean ? 1 : 0
  byte_length = 6
}

resource "digitalocean_kubernetes_cluster" "k8s" {
  count   = var.enable_digitalocean ? 1 : 0
  name    = local.name 
  region  = var.do_region
  version = "1.21.9-do.0" 

  node_pool {
    name       = var.do_k8s_pool_name
    size       = var.do_k8s_node_type
    node_count = var.do_k8s_nodes
  }
}

resource "digitalocean_kubernetes_node_pool" "k8s_nodes" {
  count      = var.enable_digitalocean ? 1 : 0
  cluster_id = digitalocean_kubernetes_cluster.k8s[count.index].id

  name       = var.do_k8s_nodepool_name
  size       = var.do_k8s_nodepool_type
  node_count = var.do_k8s_nodepool_size
}

resource "local_file" "kubeconfigdo" {
  count    = var.enable_digitalocean ? 1 : 0
  content  = digitalocean_kubernetes_cluster.k8s[count.index].kube_config[0].raw_config
  filename = "${path.module}/kubeconfig_do"
}

data "digitalocean_kubernetes_cluster" "k8s" {
  count   = var.enable_digitalocean ? 1 : 0
  name = "${var.do_k8s_name}-${random_id.cluster_name[count.index].hex}" 
}

provider "kubernetes" {
  host             = data.digitalocean_kubernetes_cluster.k8s.endpoint
  token            = data.digitalocean_kubernetes_cluster.k8s.kube_config[0].token
  cluster_ca_certificate = base64decode(
    data.digitalocean_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  )
}
