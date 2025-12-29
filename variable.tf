variable "token" {}

variable "secret-mounts" {

  default = {
    roboshop-dev = {
      description = "Roboshop Project Dev Secrets"
    }
  }
}

variable "secrets" {
  default = {
    cart = {
      secret_mount = "roboshop-dev"
      kv = {
        REDIS_HOST     = "redis-dev.shamidevops.online",
        CATALOGUE_HOST = "catalogue-dev.shamidevops.online",
        CATALOGUE_PORT = 8080
      }
    }
  }
}
