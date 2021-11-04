resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "numismata"
  username             = "victor_testeeeeee"
  password             = "udbaudnasubadasdfadAATRS"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  port = "3307"
  vpc_security_group_ids = [aws_security_group.ssh.id]
  }

output "rds_address" {
  value = aws_db_instance.rds.address
}



