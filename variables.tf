variable "region" {
  default = "us-east-2"
}

variable "eks_cluster_name" {
  default = "bookinfo"
}

variable "domain_name" {
  default = "wayofthesys.org"
}

variable "argocd_oidc_client_id" {
  description = "ArgoCD OIDC Client ID"
  type        = string
}

variable "argocd_oidc_client_secret" {
  description = "ArgoCD OIDC Client Secret"
  type        = string
}
