connection "k8s_homelab" {
  plugin         = "kubernetes"
  config_path    = "~/.kube/config"
  config_context = "admin@homelab-cluster"
  source_types   = ["deployed"]
}

connection "k8s_rancher" {
  plugin         = "kubernetes"
  config_path    = "~/.kube/config"
  config_context = "rancher-desktop"
  source_types   = ["deployed"]
}

connection "k8s_group" {
  plugin      = "kubernetes"
  type        = "aggregator"
  connections = ["k8s_homelab"]
}

connection "k8s_all" {
  plugin      = "kubernetes"
  type        = "aggregator"
  connections = [ "k8s_homelab", "k8s_rancher"]
}