
# Terraform Module: AWS EC2 Instance with Redis

This Terraform module provisions an AWS EC2 instance with the latest Amazon Linux 2023 AMI and sets up Redis on it.

## Usage

```hcl
provider "aws" {
  region = "us-east-1"
}

module "redis_instance" {
  source                  = "sakiphan/redis-instance/aws"
  instance_type           = "t2.micro"
  key_name                = "pet-clinic-server"
  tags                    = "redis-server"
  redis_instance_ports    = [6379]
}
```

In the above example, you can create an EC2 instance with Redis installed using this module. You need to provide values for `region`, `instance_type`, `key_name`, `tags`, and `redis_instance_ports` as per your requirements.

## Variables

- `region`: The AWS region to deploy in (Default: `us-east-1`).
- `instance_type`: The instance type to use for the EC2 instance (Default: `t2.micro`).
- `key_name`: The key name to use for the EC2 instance.
- `tags`: Tags for the AWS resources (Default: `redis-server`).
- `redis_instance_ports`: List of ports to allow for Redis instance (Default: `[6379]`).

## Outputs

- `instance_id`: The ID of the EC2 instance.
- `public_ip`: The public IP address of the EC2 instance.

## File Structure

- `main.tf`: Defines the EC2 instance and security group resources.
- `variables.tf`: Defines the variables for the module.
- `outputs.tf`: Defines the outputs of the module.
- `user_data.sh`: Script used to install and start Redis when the EC2 instance is launched.
- `version.tf`: Defines the Terraform version and required providers.

## Setup and Deployment

1. Initialize Terraform:

```bash
terraform init
```

2. Review the configuration:

```bash
terraform plan
```

3. Apply the configuration:

```bash
terraform apply
```

## Contact

If you encounter any issues or need assistance, please contact [sakiphan](https://github.com/sakiphan).

---
