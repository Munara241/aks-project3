resource "kubernetes_service_account" "dashboard" {
  metadata {
    name      = "admin-user"
    namespace = "kube-system"
  }
}

resource "kubernetes_cluster_role_binding" "dashboard" {
  metadata {
    name = "admin-user"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }

  subject {
    kind      = "ServiceAccount"
    name      = kubernetes_service_account.dashboard.metadata[0].name
    namespace = kubernetes_service_account.dashboard.metadata[0].namespace
  }
}
