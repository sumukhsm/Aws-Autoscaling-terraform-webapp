resource "aws_launch_template" "web_template" {

  name_prefix   = "web-template"

  image_id      = "ami-0685bcc683dadb6b9"

  instance_type = "t3.micro"

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = base64encode(file("userdata.sh"))

  tag_specifications {

    resource_type = "instance"

    tags = {
      Name = "AutoScaling-WebServer"
    }
  }
}