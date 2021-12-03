variable "ami_name" {
  type    = string
  default = "linux-web-app"
}

variable "access_key" {
  type    = string
  default = "enter your access-key here"
}

variable "secret_key" {
  type    = string
  default = "enter your secret-key here"
}


source "amazon-ebs" "Webserver-Packer" {
  ami_name                    = "${var.ami_name}"
  access_key                  = "${var.access_key}"
  secret_key                  = "${var.secret_key}"
  region                      = "ap-south-1"
  instance_type               = "t2.micro"
  source_ami                  = "ami-052cef05d01020f1d"
  associate_public_ip_address = true

}

build {

  name = "linux-builder"
  source "source.amazon-ebs.Webserver-Packer" {
    ssh_username = "ec2-user"
  }

  provisioner "shell" {
    script = "setup.sh"

  }

}
