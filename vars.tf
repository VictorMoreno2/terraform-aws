variable "ami" {
   default = {
        "us-east-1-ubuntu20" = "ami-0885b1f6bd170450c"
    }
}

variable "instance_type" { 
   default = {
       "micro" = "t2.micro" 
    }
}

variable "key_victor" {
    default = {
        "key" = "victor-aws"
    }
    }
