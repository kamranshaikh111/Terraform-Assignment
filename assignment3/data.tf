data "aws_ami" "my_ami" {
  most_recent = true
  owners = ["842313196830"]

filter {
  name = "name"
  values   = ["My_image"]
}
depends_on = [ aws_ami_from_instance.this_ami ]
}

resource "aws_instance" "my_instance" {
    ami = data.aws_ami.my_ami.id
    instance_type = "t2.micro"
    
    tags = {
      Name = "Finally"
    }
}