### Step 7 : Deploy the Application

1. Before going to do this step , We have to look at the below code

##### ec2.tf
```
resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name      = aws_key_pair.example.key_name
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub1.id

  connection {
    type        = "ssh"
    user        = "ubuntu"  # Replace with the appropriate username for your EC2 instance
    private_key = file("/c/Users/Mathesh M/.ssh/id_rsa")  # Replace with the path to your private key
    host        = self.public_ip
   }

   # File provisioner to copy a file from local to the remote EC2 instance
   provisioner "file" {
    source      = "../Flask Application/app.py"  # Replace with the path to your local file
    destination = "/home/ubuntu/app.py"  # Replace with the path on the remote instance
   }

   provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",  # Update package lists (for ubuntu)
      "sudo apt-get install -y python3-pip",  # Example package installation
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python3 app.py",
    ]
   }
}

```
2. The above code is we used in ec2.tf file for creating EC2 Instance.
3. Look at the provisioners section :
```
connection {
    type        = "ssh"
    user        = "ubuntu"  # Replace with the appropriate username for your EC2 instance
    private_key = file("/c/Users/Mathesh M/.ssh/id_rsa")  # Replace with the path to your private key
    host        = self.public_ip
   }

   # File provisioner to copy a file from local to the remote EC2 instance
   provisioner "file" {
    source      = "../Flask Application/app.py"  # Replace with the path to your local file
    destination = "/home/ubuntu/app.py"  # Replace with the path on the remote instance
   }

   provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y",  # Update package lists (for ubuntu)
      "sudo apt-get install -y python3-pip",  # Example package installation
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python3 app.py",
    ]
   }
```
3. We are going to ssh into our instance and deploy the flask app using provisoners.
4. File provioner for copy our app code into our instance.
5. Remote-exec provioner is for installing the necessary softwares required to run the app.
6. Then , Let's deploy the Application.
7. Run the below command to know what is going to be created :
```
terraform plan
```
8. Then run the below command for deploy the application :
```
terraform apply -auto-approve
```
9. The above command will deploy the application and give the Web link as output.

![output](https://github.com/mathesh-me/application-deployment-in-aws-terraform/assets/144098846/3570868c-d0f9-4d47-8651-b1301c072dce)
