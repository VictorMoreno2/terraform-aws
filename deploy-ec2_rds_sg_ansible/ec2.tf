data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "gitlab_docker" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  vpc_security_group_ids      = [aws_security_group.ssh.id]
  key_name                    = var.key_config.key_name
  subnet_id                   = var.subnet_id

  tags = {
    Name = var.ec2_tag
  }

  provisioner "remote-exec" {
    inline = ["echo 'Wait until SSH is ready'"]

    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = file(var.key_config.key_path)
      host        = aws_instance.gitlab_docker.public_ip
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i ${aws_instance.gitlab_docker.public_ip}, --private-key ${var.key_config.key_path} site.yaml"
  }
}

