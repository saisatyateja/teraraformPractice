# **In This Task A Vpc Is Created With The Help Of Variables Using input.tf File**

---

1. writing a template for creating vpc.
2. arguments requried to create a vpc are
     - provider for Terrafrm ("aws")
     - resource name ("aws_vpc")
     - cidr range argument ("cidr_block")
     - name to vpc and the argument is ("tags")
3. provider code "provider.tf"
   `code`
   ```
   provider "aws" {
    region = var.region
   }

   ```
4. vpc code "vpc.tf"
   `code`
   ```
   resource "aws_vpc" "tf_vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      "Name" = var.vpc_name
    }
   }
   ```
5. variable file "input.tf"
   `code`
   ```
    variable "region" {
    type = string
    default = "us-east-2"
    }
    variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/24"
    }
    variable "vpc_name" {
    type = string
    default = "ohio_vpc"
    }
   ```