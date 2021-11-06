variable "key_config" { 
   default = {
       key_name = "victor-aws"
       key_path = "~/victor-aws.pem"
   }
}

variable "ssh_user" { 
   default = "ubuntu"
}
variable "vpc_id" { 
   default = "vpc-00cbdd9d14ccbc690"
}

variable "subnet_id" { 
   default = "subnet-0706c0d7c5b09a8eb"
}

##################### EC2 VARIABLES #####################
variable "instance_type" { 
   default = "t2.micro"
}
variable "ec2_tag" { 
   default = "gitlab-runner_docker"
}

##################### RDS VARIABLES #####################

variable "allocated_storage" { 
   default = "10"
}
variable "username" { 
   default = "username_teste"
}
variable "password" { 
   default = "password_daidnhuasnbdjasbduiasbj"
}
variable "db_name" { 
   default = ""
}
variable "instance_class" { 
   default = "db.t2.micro"
}

variable "engine_version" { 
   default = "8.0"
}

variable "backup_retention_period" { 
   default = "7"
}

variable "performance_insights_enabled" { 
   default = "true"
}