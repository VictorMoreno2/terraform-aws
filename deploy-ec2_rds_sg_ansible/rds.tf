resource "aws_db_instance" "rds_mysql" {
  identifier = "rds_mysql"
  allocated_storage    = var.allocated_storage
  engine               = "mysql"
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true
  port = "3306"
  backup_retention_period = var.backup_retention_period
  ###performance_insights_enabled = var.performance_insights_enabled   ### nao funciona com t2 micro
  vpc_security_group_ids = [aws_security_group.ssh.id]
  tags = {
    Name = var.ec2_tag
  }
  }

#for radom password
#resource "random_string" "password" {
#  length  = 16
#  special = false
#}




