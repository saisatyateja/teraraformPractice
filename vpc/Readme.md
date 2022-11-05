# **This is a Terraform VPC Creation Practice Task**

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
     region = "us-east-2"
    }

    ```
 4. vpc code "vpc.tf"
    `code`
    ```
    resource "aws_vpc" "ohio_vpc" {
      cidr_block = "10.0.0.0/24"
      tags = {
        "Name" = "ohio_vpc"
      }
    }

    ```