variable "instance"{
    type = list
    default = ["mongodb","mysql","redis","rabbitmq"]
}

variable "domain_name"{
    type = string
    default = "mkreddy.shop"
}