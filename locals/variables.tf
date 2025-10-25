variable "project"{
    default = "roboshop"
}

variable "environment"{
    default = "Dev"
}

 #   variable "common_name"{
 #       default = "${var.project}.${var.environment}"
 #   }

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
}

variable "common_tags"{
    type = map
    default = {
        Name = "terraform"
        Terraform = "true"
    }

}


variable "sg_name"{   
    type = string
    default = "allow-all-tf"
}

variable "cidr"{
    type = list
    default = ["0.0.0.0/0"]
}

variable "ingress_from_port"{
    default = 0
}

variable "ingress_to_port"{
    default = 0
}


variable "egress_from_port"{
    default = 0
}

variable "egress_to_port"{
    default = 0
}

variable "protocal"{
    type = string
    default = "-1"
}