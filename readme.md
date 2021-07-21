# CLOUD NATIVE LANDING CHALLENGE

This is a challenge proposed to dispute the vacancy of senior platfomr engineer in ADIDAS.

**MORE DETAILS IN PDF GUIDE**


## CONSIDERATIONS

I have tried to take into account the main considerations proposed in the challenge

* **First** 

Use English as documentation language.

* **Second** 

Explain WHAT and WHY you did something.

* **Third** 

You must not spend more than 5 hours (in both). 

* **Fourth**

Take care of Security.



## DEPLOY 🚀

The first thing you need is a hosts with, a kubernetes cluster (minikube for example), git and deployed localstack, you can follow the link to [set it up](https://github.com/localstack/localstack). 
I have used an AWS account because I really think it would better illustrate the importance of IAM, the first thing I did was create a terraform-admin programmatic user for terraform tasks, then I configured the credentials for that user in my Linux machine.

Next step you should clone this repo

```
$ git clone https://github.com/CHUCKCR/AdidasCodingChallenge_Exercise_One
```

From your deployed localstack, you need to get the endpoint, by default it is http://localhost:4566, integrate it into main.tf following the guide [set it up](https://github.com/localstack/localstack).

Move to the terraform folder and see what is going to deploy.

```
$ terrafom plan
```

Lastly

```
$ terrafom apply
```

## OTHERS SECURITY CONSIDERATIONS

-	You can create a unique key pair for the instance.

```
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
```

-	Do not include in the repository any file that contains access keys, such as “credentials.tf” or similar, if you have one for a a non-critical environment although this is a bad practice, you must add it a “.gitignore”.

-	Use of hashicorp vault or similar solution.

-	The AWS Terraform admin user should only have the permissions that he need.


## ADDITIONAL INFORMATION 📖

If you need some more information, visit the AWS documentation [AWS](https://aws.amazon.com/es/whitepapers/?whitepapers-main.sort-by=item.additionalFields.sortDate&whitepapers-main.sort-order=desc&awsf.whitepapers-flag=*all&awsf.whitepapers-content-type=*all&awsf.whitepapers-tech-category=*all&awsf.whitepapers-industries=*all&awsf.whitepapers-business-category=*all&awsf.whitepapers-global-methodology=*all) 
or terraform documentation for AWS provider [Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) 


## AUTHOR ✒️

**Carlos Ceballos Romero** 

* **Github** [CCEBROM](https://github.com/CHUCKCR)


## USED TOOLS  🛠️

uring the course of the challenge, I have used the following tools:

* [Github](https://github.com/) - To manage the repository.
* [Terraform](https://www.terraform.io) - To Deploy the resources.
* [Helm](https://helm.sh/) - To deploy container.
* [Minikube](https://minikube.sigs.k8s.io/docs/start/) - To make a cluster the containers.
* [AWS](https://aws.amazon.com/es) - To host the resource in cloud.


## GRATITUDE

If you like this work, help developers who have collaborated

* Thank them
* Share this project 
* Collaborate
