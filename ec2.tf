resource "aws_instance" "ubuntao" {
  ami = "${var.ami["us-east-1-ubuntu20"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "${var.key_victor.key}"
  public_key = "<key_pub_value>"

  tags = {
    Name = "HelloWorld"
  }
}