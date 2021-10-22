resource "aws_instance" "ubuntao" {
  ami = "${var.ami["us-east-1-ubuntu20"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "${var.key_victor.key}"

    tags = {
    Name = "Teste-Ansible-IAC"
  }
}


#resource "aws_key_pair" "deployer" {  
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7RdQJeABcCGZ6KqL7l84u1JNQkYBId5ZWokN5IgotjJaqEVjRiR9HOvmjWYEKuxKIg1mfyvreLB9SsKNUAvBB0S4W2Pn+yoK3or39Pi9cSuznxvIyvF/7yYncZ7jiOw0qbumDPzCuN1CmhfhccGktegFMobsvVrzrnFXlQq4LWuZ2CbEiraNVyokIQeTLIsGxajHQIBE+HWqW/VVkROMtYCjMQg2nhoBNGBKBeUWO4IT+mtva/XdgihYNjIJoO17ALgqn89KHUOVBh3V6uIEKNC1naFTO/EvBC+nZNqfvMbkAHKozjqAgDtZLHLJRVYHHyVlTbS9EakZCNevZ34w2GGyzMzLBYHOX0AX6avQRd17Rd8Y0cLWwiRW1Z8YuPO86DVDPm20gyxx3LXLB/oY+/HhLBnESd3cNxuOHNf4X/lWRb5TZAjjD3oQGqEr2WW1aLqGbTH4aAsUh4UZCJ6205ne3eKtYgo2gsMhbLak4cOjL70RfOgoT87hPSytDjY0= root@ubuntu-focal"
#}


