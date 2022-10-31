resource "aws_launch_template" "blue-template" {
  name                   = "blue-template"
  image_id               = data.aws_ami.ubuntu_image.id
  instance_type          = var.instance_type
  key_name               = var.key_pair
  vpc_security_group_ids = [aws_security_group.app_server.id]
  user_data = base64encode(templatefile("${path.module}/user-data.sh.tpl", {
    version = "Blue Website"
    color   = "blue"
  }))

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "blue-server"
    }
  }
}

resource "aws_autoscaling_group" "blue_asg" {
  desired_capacity    = 2
  max_size            = 2
  min_size            = 1
  vpc_zone_identifier = [data.aws_subnet.private_subnet_1.id]

  launch_template {
    id      = aws_launch_template.blue-template.id
    version = "$Latest"
  }
}