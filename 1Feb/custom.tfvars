####### FOR PROJECT #########
# SSH key pair
P_key_name = "Project_key"
P_public   = "/root/.ssh/id_rsa.pub"
# Security Group
P_sg_name     = "Project_sec_sg"
P_sg_desc     = "Project_SEC_GR"
P_sg_ports    = "80"
P_sg_protocol = "tcp"
P_sg_cidr     = "0.0.0.0/0"
# EC2 Instance
P_ami_id   = "ami-0277155c3f0ab2930"
P_instance_type = "t2.micro"

####### FOR WEB #########
# SSH key pair
W_key_name = "Web_key"
W_public   = "/root/.ssh/id_rsa.pub"
# Security Group
W_sg_name     = "Web_sec_sg"
W_sg_desc     = "Web_SEC_GR"
W_sg_ports    = "443"
W_sg_protocol = "tcp"
W_sg_cidr     = "0.0.0.0/0"
# EC2 Instance
W_ami_id   = "ami-0277155c3f0ab2930"
W_instance_type = "t2.micro"

####### FOR APPLICATION #########
# SSH key pair
A_key_name = "App_key"
A_public   = "/root/.ssh/id_rsa.pub"
# Security Group
A_sg_name     = "App_sec_sg"
A_sg_desc     = "App_SEC_GR"
A_sg_ports    = "22"
A_sg_protocol = "tcp"
A_sg_cidr     = "0.0.0.0/0"
# EC2 Instance
A_ami_id   = "ami-0277155c3f0ab2930"
A_instance_type = "t2.micro"




