// variable "instances"{
//     default = {
//         mysql = "t3.micro"
//         mongodb = "t3.small"
//     }
// }

variable "instances"{
    default = ["mongodb","mysql"]
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
}

variable "domain_name"{
    default = "mkreddy.shop"
}

// variable "ec2_tags"{
//     type = map
//     default = {
//         Name = "terraform-dev"
//         Terraform = "true"
//         Project = "JoinDevOps"
//         Environment = "Dev"
//     }

// }


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