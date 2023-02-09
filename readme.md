**Terraform Bootcamp

First need to connect terraform to aws

Then through terraform need to login AWS account for using AWS console.

Then create a resource ec2 through terraform.

So create a two files main.tf and provider.tf

---------------------------------

Inside main.tf

I have write the code




provider "aws" {

  region     = "us-west-2"

  access_key = "AKIA5CDRBOZILT3ERRMF"

  secret_key = "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"

}

so here first block show credentials part for every time didn't want to configure aws account

that's way add this credential block.

This block for create a ec2 instance

resource "aws_instance" "S1" {

  ami           = "ami-095413544ce52437d"

  instance_type = "t2.micro"



  tags = {

    Name = "Server1"

  }

}

-----------------------

Provider.tf



Inside provider.tf take once small code from terraform registry.

Here provider responsible for API interaction and exposing resource.



terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 4.0"

    }

  }

}

---------------------------------
Then first code setup is done then start initialization using terraform init

Terraform init: Terraform init command use to initialize all working directory terraform configuration file.

Terraform validate: Terraform validate command is used checking the configuration is fine or not.

Terraform Plan: Terraform plan command is used to create a execution plan of terraform perform and refresh.

Terraform Apply: Terraform apply is used to apply the chnages and reach the desired state.


Terraform destroy: Terraform destroy command is used to destroy and delete the terraform managed infrastucture.


Then check the AWS console instance is created.
