resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
  overwrite = true
  key_id = "4232fc03-9621-481b-83e2-a4f64d527d7a"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "https://catalogue-dev.smitdevops.online/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "https://user-dev.smitdevops.online/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "https://cart-dev.smitdevops.online/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "https://shipping-dev.smitdevops.online/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "https://payment-dev.smitdevops.online/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.smitdevops.online:27017/catalogue", type = "String" },
    { name = "roboshop.dev.dispatch.amqp_host", value = "rabbitmq-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.smitdevops.online:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.smitdevops.online", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.smitdevops.online:27017/users", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "root", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },


    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.docdb.password", value = "roboshop123", type = "SecureString" },
  ]
}