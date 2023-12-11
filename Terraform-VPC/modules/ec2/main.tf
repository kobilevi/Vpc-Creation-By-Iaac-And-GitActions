resource "aws_instance" "web" {
  count = length(var.ec2_names)
  ami           = data.aws_ami.amazon-2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  user_data = <<EOF
#!/bin/bash

# Update the package lists
yum update -y

# Install Apache
yum install httpd -y

# Start the Apache service and configure it to start on boot
service httpd start
chkconfig httpd on

# Get the public IP address of the instance
public_ip=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)

# Get the operating system ID
os_id=$(cat /etc/os-release | grep "ID=" | cut -d= -f2)

# Create an HTML page with instance details
echo "<html><body><h1>EC2 Instance Details</h1><p>Public IP: $public_ip</p><p>OS ID: $os_id</p></body></html>" > /var/www/html/index.html


  EOF
  tags = {
    Name = var.ec2_names[count.index]

  }
}