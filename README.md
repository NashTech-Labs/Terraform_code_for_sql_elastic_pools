This Terraform Git repo contains a module that create SQL elastic pools in Azure.

## Prerequisites

Before you can use this Terraform module, you will need to have the following installed:

- [Terraform]
- [Azure CLI]

You will also need to have an Azure subscription and an existing resource group to deploy resources to.

## Usage

To use this Terraform module, follow these steps:

Clone this Git repo to your local machine.

Change into the directory containing the module.

Initialize Terraform in the directory.

```bash
terraform init
```

Create a new file named `terraform.tfvars` in the same directory as your `.tf` files.

```bash
touch terraform.tfvars
```

Open the file in your preferred text editor.

```bash
nano terraform.tfvars
```

Add your desired inputs to the file in the following format:

```ruby

name= ""
sql-rg= ""
size = ""
location = ""
capacity = ""
min_capacity = ""
max_capacity = ""
```

> Note that the `terraform.tfvars` file will not be committed to version control, as it could contain sensitive information such as access keys and credentials.

Review the changes that Terraform will make to your Azure resources.

```bash
terraform plan -var-file="terraform.tfvars"
```
