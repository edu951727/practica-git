resource "aws_instance" "web" {
  ami           = "${var.ami}"

vpc_security_group_ids = [  "${aws_security_group.sg.id}"]


  tags = {
    Name = "${var.project_name}-${var.environment}"
  }
}