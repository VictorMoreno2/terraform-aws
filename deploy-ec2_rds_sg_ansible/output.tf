output "gitlab_docker_ip" {
  value = aws_instance.gitlab_docker.public_ip
}

output "rds_address" {
  value = aws_db_instance.rds_mysql.address
}

output "rds_username" {
  value = aws_db_instance.rds_mysql.username 
}

output "rds_engine_version_actual" {
  value = aws_db_instance.rds_mysql.engine_version_actual
}

output "rds_tags_all" {
  value = aws_db_instance.rds_mysql.tags_all
}


