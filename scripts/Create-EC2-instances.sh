#!/bin/bash

# Configuration variables
AWS_REGION="sa-east-1"            # AWS Region (Sao Paulo)
AMI_ID="ami-xxxxxxxxxxxxxxxxx"   # AMI ID
INSTANCE_TYPE="t2.micro"         # Instance type
KEY_NAME="ec2-pass"     
SECURITY_GROUP_NAME="instances-ec2-group"  

# Create the security group
aws ec2 create-security-group \
  --group-name $SECURITY_GROUP_NAME \
  --description "Group of security" \
  --vpc-id vpc-r7zyuekbf5j

# Define inbound rules to allow necessary traffic
aws ec2 authorize-security-group-ingress \
  --group-name $SECURITY_GROUP_NAME \
  --protocol tcp \
  --port 22 \
  --cidr 192.168.1.1/0  

aws ec2 authorize-security-group-ingress \
  --group-name $SECURITY_GROUP_NAME \
  --protocol tcp \
  --port 80 \
  --cidr 192.168.1.1/0  

# Create the EC2 instance
INSTANCE_ID=$(aws ec2 run-instances \
  --region $AWS_REGION \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-groups $SECURITY_GROUP_NAME \
  --subnet-id subnet-192.168.1.1 \
  --associate-public-ip-address \
  --user-data "#!/bin/bash
              # Install Node.js
              curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
              sudo apt-get install -y nodejs
              # Configure any other installations or settings you need here
              " \
  --query 'Instances[0].InstanceId' \
  --output text)

echo "EC2 instance created with ID: $INSTANCE_ID"
