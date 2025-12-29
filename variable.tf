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


frontend = {
  secret_mount = "roboshop-dev"
  kv = {
    CATALOGUE_URL  = "http://catalogue-dev.shamidevops.online:8080/"
    USER_URL       = "http://user-dev.shamidevops.online:8080/"
    CART_URL       = "http://cart-dev.shamidevops.online:8080/"
    SHIPPING_URL   = "http://shipping-dev.shamidevops.online:8080/"
    PAYMENT_URL    = "http://payment-dev.shamidevops.online:8080/"
    CATALOGUE_HOST = "catalogue-dev.shamidevops.online"
    CATALOGUE_PORT = "8080"
    USER_HOST      = "user-dev.shamidevops.online"
    USER_PORT      = "8080"
    CART_HOST      = "cart-dev.shamidevops.online"
    CART_PORT      = "8080"
    SHIPPING_HOST  = "shipping-dev.shamidevops.online"
    SHIPPING_PORT  = "8080"
    PAYMENT_HOST   = "payment-dev.shamidevops.online"
    PAYMENT_PORT   = "8080"
  }
}

catalogue = {
  secret_mount = "roboshop-dev"
  kv = {
    MONGO       = "true"
    MONGO_URL   = "mongodb://mongodb-dev.shamidevops.online:27017/catalogue"
    DB_TYPE     = "mongo"
    APP_GIT_URL = "https://github.com/roboshop-devops-project-v3/catalogue"
    DB_HOST     = "mongodb-dev.shamidevops.online"
    SCHEMA_FILE = "db/master-data.js"
  }
}

user = {
  secret_mount = "roboshop-dev"
  kv = {
    MONGO     = "true",
    REDIS_URL = "redis://redis-dev.shamidevops.online:6379",
    MONGO_URL = "mongodb://mongodb-dev.shamidevops.online:27017/users"
  }
}

mysql = {
  secret_mount = "roboshop-dev"
  kv = {
    ROOT_PASSWORD = "RoboShop@1"
  }
}

rabbitmq = {
  secret_mount = "roboshop-dev"
  kv = {
    APP_USER     = "roboshop",
    APP_PASSWORD = "roboshop123"
  }
}

shipping = {
  secret_mount = "roboshop-dev"
  kv = {
    CART_ENDPOINT = "cart-dev.shamidevops.online:8080"
    DB_HOST       = "mysql-dev.shamidevops.online"
    DB_USER       = "root"
    DB_PASS       = "RoboShop@1"
    DB_TYPE       = "mysql"
    APP_GIT_URL   = "https://github.com/roboshop-devops-project-v3/shipping"
  }
}

payment = {
  secret_mount = "roboshop-dev"
  kv = {
    CART_HOST = "cart-dev.shamidevops.online",
    CART_PORT = 8080,
    USER_HOST = "user-dev.shamidevops.online",
    USER_PORT = 8080,
    AMQP_HOST = "rabbitmq-dev.shamidevops.online",
    AMQP_USER = "roboshop",
    AMQP_PASS = "roboshop123"
  }
}

ssh = {
  secret_mount = "roboshop-infra"
  kv = {
    username = "ec2-user",
    password = "DevOps321"
  }
}