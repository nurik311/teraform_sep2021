resource "aws_instance" "my_ec2" {
  ami                    = data.aws_ami.amazon_linux2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  key_name               = aws_key_pair.terraform_server.key_name

  tags = {
    Name = var.env
  }
  provisioner "file" {
    source      = "/home/ec2-user/teraform_sep2021/session8/index.html"
    destination = "/tmp/index.html" # where you want to send it?
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }

  }
  provisioner "remote-exec" { #Act similar to CloudInit.
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html",
      "sudo echo 'Apache's been uploaded' >> /var/www/htmal/index.html" # it runs when instance gets bootstrapped, but it doesn't replace the resource

    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}

resource "aws_key_pair" "terraform_server" {
  key_name   = "terraform_server_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "null_resource" "local_script" {

  provisioner "local-exec" {
    command = "echo 'this is test' >> local-exec.txt"
  }
}