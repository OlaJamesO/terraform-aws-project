# AWS Beanstalk WebApp with Terraform

![enter image description here](https://i.ibb.co/d7z6dkd/Terrafromstate.png)

I used Terraform to configure AWS infrastructure while maintaining terraform state in a remote backend with S3 bucket.

## Architecture 
I ran terraform locally configured with aws authentication and S3 to serve as a remote state backend I then used Terraform to create a multi-AZ VPC that is broken into public and private subnets, connected to the internet with an internet gateway (public subnet) and NAT gateway (private subnet) through a route table. 

The private subnet contains the database and cache layer which can be accessed by bastion host from the public subnet.

![enter image description here](https://i.ibb.co/xLyxSzR/beanstalkstak.png)

After completeing the foundational structure I then used terraform to provision the Elastic Beanstalk stack that leveraged  an application load balancer to distribute traffic between application (public) and database (private) layer.  
 
## Steps

 - Setup terraform with Backend
 - Setup a secure & HA VPC
 - Security Group, key Pairs, Bastion Host... 
 - Provision Backend Services
         - RDS
         - Elastic Cache 
         - Active MQ
 - Provision Beanstalk Environment and application 
