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
  default     = "614992756863-m0i4l8b7uslg3dhhmfs2lsulu8l33juq.apps.googleusercontent.com"
}

variable "argocd_oidc_client_secret" {
  description = "ArgoCD OIDC Client Secret"
  type        = string
}
