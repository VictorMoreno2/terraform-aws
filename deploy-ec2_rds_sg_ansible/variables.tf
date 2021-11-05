variable "key_config" { 
   default = {
       key_name = "victor-aws"
       key_path = "~/victor-aws.pem"
   }
}
variable "instance_type" { 
   default = "t2.micro"
}
variable "ec2_tag" { 
   default = "gitlab-runner_docker"
}

variable "vpc_id" { 
   default = "vpc-00cbdd9d14ccbc690"
}

variable "ssh_user" { 
   default = "ubuntu"
}
variable "subnet_id" { 
   default = "subnet-0706c0d7c5b09a8eb"
}

