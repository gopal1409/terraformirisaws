resource "aws_instance" "web" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  count = 1
 # key_name = gopal
 vpc_security_group_ids = [ aws_security_group.allow_ssh.id,aws_security_group.allow_http.id ]
  tags = {
    Name = "launch from terraform"
  }
}