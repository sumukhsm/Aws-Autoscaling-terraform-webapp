resource "aws_autoscaling_group" "web_asg" {

  desired_capacity = 1

  max_size = 2

  min_size = 1

  vpc_zone_identifier = [
    aws_subnet.public1.id,
    aws_subnet.public2.id
  ]

  target_group_arns = [
    aws_lb_target_group.web_tg.arn
  ]

  launch_template {

    id      = aws_launch_template.web_template.id

    version = "$Latest"
  }

  tag {

    key = "Name"

    value = "AutoScaling-WebServer"

    propagate_at_launch = true
  }
}