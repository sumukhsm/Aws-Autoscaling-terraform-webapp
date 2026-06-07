resource "aws_lb" "web_alb" {

  name               = "autoscaling-alb"

  internal           = false

  load_balancer_type = "application"

  security_groups = [
    aws_security_group.web_sg.id
  ]

  subnets = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]
}
resource "aws_lb_target_group" "web_tg" {

  name     = "autoscaling-tg"

  port     = 80

  protocol = "HTTP"

  vpc_id   = aws_vpc.main.id

  health_check {

    path = "/"

    port = "traffic-port"
  }
}
resource "aws_lb_listener" "http" {

  load_balancer_arn = aws_lb.web_alb.arn

  port     = 80

  protocol = "HTTP"

  default_action {

    type = "forward"

    target_group_arn = aws_lb_target_group.web_tg.arn
  }
}