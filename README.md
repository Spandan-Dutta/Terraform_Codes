 <p align="center">
  <img src="https://user-images.githubusercontent.com/67653554/144899383-8c1d93a1-2111-4186-b516-7323fb85233b.png" width="400" hieght="400"/>
</p>

# What is Terraform??
Terraform is an open-source  **Infrastructure As Code** software tool created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language (HCL).Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

**What is Infrastructure As Code?** <br>
Infrastructure As Code (IaC) is the process of managing and provisioning computer data centers through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools. In simple words we just have to write codes to build our infrastructure. Whole infrastructure is constructed using code and that 
code is written in terraform. Terrafrom uses JSON as a language. Terraform  has become more popular because it has a simple syntax that allows easy modularity and works against multi-cloud. Terraform is compatible with every Cloud Service Provider **AWS,GCP,AZURE and many more**. You just have to write the code once and then you can use that code with
any of the service provider. <br>

Apart from Cloud, we can use Terrafrom to launch containers for example **Docker**. <br> <br>

# Terraform has four major commands:

**• $ terraform init <br>
• $ terraform plan <br>
• $ terraform apply <br>
• $ terraform destroy**<br>

**Let's discuss each command briefly:**  <br>

• **terraform init** - This will check all the providers inside the code and for example it found AWS so it will download all the necessary plugins which will help Terraform to communicate with the AWS provider.terraform folder gets created on the left side whenever we do terraform init. It installs all the necessary plugins required for the terraform to execute. As in the code above we only used AWS as the provider so inside the terraform folder all the AWS related plugins terraform will download.<br>
<br>

• **terraform plan** - This is a optional command. It just does a dry run of the code. <br>
<br>

• **terraform apply** - Same as terraform plan. It will execute the whole code. <br>
<br>

• **terraform destroy** - This command destroys your infrastructure. By writing this command you can destroy your whole work in one go. <br>
<br>

# Companies using Terraform in their tech stack: <br>
• Uber <br>
• Udemy <br>
• Twitch <br>
• Slack and many more..... <br>

# Steps to install Terraform in your system: <br>

•  Download Terraform's executable file in your system by visiting  <a href="https://www.terraform.io/" target="_blank">Introduction</a>

