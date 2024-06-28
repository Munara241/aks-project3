# resource "helm_release" "kubernetes_dashboard" {
#   name       = "kubernetes-dashboard"
#   namespace  = "kube-system"
#   chart      = "kubernetes-dashboard"
#   repository = "https://kubernetes.github.io/dashboard/"
#   version    = "5.0.5"

#   set {
#     name  = "service.type"
#     value = "LoadBalancer"
#   }

#   set {
#     name  = "resources.limits.cpu"
#     value = "200m"
#   }

#   set {
#     name  = "resources.limits.memory"
#     value = "100Mi"
#   }

#   set {
#     name  = "resources.requests.cpu"
#     value = "100m"
#   }

#   set {
#     name  = "resources.requests.memory"
#     value = "50Mi"
#   }

#   set {
#     name  = "ingress.enabled"
#     value = "true"
#   }

#   set {
#     name  = "rbac.clusterAdminRole"
#     value = "true"
#   }
# }

resource "helm_release" "kubernetes_dashboard" {
  name       = "kubernetes-dashboard"
  namespace  = "kubernetes-dashboard"
  chart      = "kubernetes-dashboard"
  repository = "https://kubernetes.github.io/dashboard/"
  version    = "5.0.5"

  set {
    name  = "service.type"
    value = "LoadBalancer"
  }

  set {
    name  = "resources.limits.cpu"
    value = "200m"
  }

  set {
    name  = "resources.limits.memory"
    value = "100Mi"
  }

  set {
    name  = "resources.requests.cpu"
    value = "100m"
  }

  set {
    name  = "resources.requests.memory"
    value = "50Mi"
  }

  set {
    name  = "ingress.enabled"
    value = "true"
  }

  set {
    name  = "rbac.clusterAdminRole"
    value = "true"
  }

  depends_on = [
    kubernetes_namespace.kubernetes_dashboard
  ]
}

resource "kubernetes_namespace" "kubernetes_dashboard" {
  metadata {
    name = "kubernetes-dashboard"
  }
}
