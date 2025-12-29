variable "token" {}

variable "secret-mounts" {

  default = {
    roboshop-dev = {
      description = "Roboshop Project Dev Secrets"
    }
  }
}

# variable "secrets" {
#   default = {
#     cart = {
#       secret_mount = "roboshop-dev"
#       kv = {
#         REDIS_HOST     = "redis-dev.rdevopsb85.online",
#         CATALOGUE_HOST = "catalogue-dev.rdevopsb85.online",
#         CATALOGUE_PORT = 8080
#       }
#     }