
# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~> 3.0"
#     }
#   }
#   required_version = ">= 1.0.0"
# }

# provider "azurerm" {
#   features {}
# }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.34.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 1.11.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.0"
    }
  }
  required_version = ">= 0.14"
}

provider "azurerm" {
  features {}
}

provider "kubernetes" {
  host                   = azurerm_kubernetes_cluster.k8s.kube_config.0.host
  client_certificate     = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = azurerm_kubernetes_cluster.k8s.kube_config.0.host
    client_certificate     = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)
  }
}
