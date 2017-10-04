AWS Task Definition Terraform module
========================

Terraform module which creates a simple task-definition to be used with ECS services

Usage
-----

```hcl
module "task" {
  source                = "git::https://github.com/egarbi/terraform-aws-task-definition"
  name                  = "example-testing"
}
```

> Note: To see a more useful Usage example look in aws-terraform-aws-ecs-service module
