# resource "kubernetes_deployment" "app_deployment" {
#   metadata {
#     name      = "my-app"
#     namespace = "default"
#   }

#   spec {
#     replicas = 2

#     selector {
#       match_labels = {
#         app = "my-app"
#       }
#     }

#     template {
#       metadata {
#         labels = {
#           app = "my-app"
#         }
#       }

#       spec {
#         container {
#           image = "my-app-image:latest"
#           name  = "my-app"

#           port {
#             container_port = 80
#           }
#         }
#       }
#     }
#   }
# }

# resource "kubernetes_service" "app_service" {
#   metadata {
#     name      = "my-app-service"
#     namespace = "default"
#   }

#   spec {
#     selector = {
#       app = "my-app"
#     }

#     port {
#       port        = 80
#       target_port = 80
#     }

#     type = "LoadBalancer"
#   }
# }
