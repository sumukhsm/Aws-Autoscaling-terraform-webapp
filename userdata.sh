#!/bin/bash

yum update -y

yum install -y httpd

systemctl start httpd
systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>AWS Auto Scaling Web Application</title>
</head>

<body style="background-color:#f4f4f4; text-align:center; padding-top:100px; font-family:Arial, sans-serif;">

    <h1 style="color:#232F3E;">
        AWS Auto Scaling Web Application
    </h1>

    <h2 style="color:#FF9900;">
    Infrastructure Provisioned using Terraform by Sumukh SM
    </h2>

    <h3>
        Auto Scaling Instance Successfully Provisioned
    </h3>

    <p>
        Powered by EC2, Auto Scaling Group, Application Load Balancer, and Terraform
    </p>

</body>
</html>
EOF