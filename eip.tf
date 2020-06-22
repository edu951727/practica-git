resource "aws_eip" "elastic_ip" {
  vpc      = true

  instance = "${aws_instance.web.id}"
  
  tags = {
      Name = "${var.project_name}-${var.environment}"
  }
}