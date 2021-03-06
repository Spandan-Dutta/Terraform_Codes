 <p id="top" align="center">
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

• **terraform init** - This will check all the providers inside the code and for example it found AWS so it will download all the necessary plugins which will help Terraform to communicate with the AWS provider.terraform folder gets created on the left side of your code editor (in my case VS Code) whenever we do terraform init. It installs all the necessary plugins required for the terraform to execute. As in the code above we only used AWS as the provider so inside the terraform folder all the AWS related plugins terraform will download.<br>
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

•  **Download Terraform's executable file in your system by visiting  <a href="https://www.terraform.io/" target="_blank">here</a>** <br>

![image](https://user-images.githubusercontent.com/67653554/144912815-7afb7fbf-65c2-4b27-9cda-b3e78e16406a.png) <br>
Click on Download CLI <br>

• **Select your OS compatible architecture.** <br>

![image](https://user-images.githubusercontent.com/67653554/144913138-5b5734c5-e299-46ee-b100-f9e6e5221e66.png) <br>

•  **Now as you downlaod it, a zip file will be downloaded in your system. after that just extract it and you will be able to see a exe file of terraform.** <br> 

![image](https://user-images.githubusercontent.com/67653554/144913732-3055a372-2b17-4dc6-9603-04e2f20061a6.png) <br>

• **Just copy the exe file and make a folder named Terraform in your C drive and paste that exe file inside that folder.** <br>

![image](https://user-images.githubusercontent.com/67653554/144914459-bc73c14c-51f2-498e-9ead-99bee5b2582d.png) <br> 

• **Now just copy the directory path and set the environment variable path.** <br>

![image](https://user-images.githubusercontent.com/67653554/144914918-dfb31e5f-0328-44ef-ac4a-4cd1c08bbb48.png) <br>

![image](https://user-images.githubusercontent.com/67653554/144915159-21e42d6f-8d0a-400b-9b10-d05d46f2e3dc.png) <br>

• **Now just open the command prompt and write terraform -v** <br>

![image](https://user-images.githubusercontent.com/67653554/144915552-9c28ee9e-3ae4-48fa-af8b-09ea57bf169c.png) <br>

**By this command you can see the version of Terraform installed in your system.** <br>

<p align="center">
   <a href="#top">(Back to top)</a>
</p>









