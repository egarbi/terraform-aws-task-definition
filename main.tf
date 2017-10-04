/**
 * Variables.
 */

variable "name" {
  description = "Task definition name"
}

variable "container_definitions" {
  description = "here you should include the full container definitons"
  default = "[]"
}

variable "task_role" {
  description = "Optional IAM role that tasks can use to make API requests to authorized AWS services."
  default = ""
}


/**
 * Resources.
 */

# The ECS task definition.

resource "aws_ecs_task_definition" "main" {
  family = "${var.name}"
  task_role_arn = "${var.task_role}"

  container_definitions = "${var.container_definitions}"

}

/**
 * Outputs.
 */

// The created task definition name
output "name" {
  value = "${aws_ecs_task_definition.main.family}"
}

// The created task definition ARN
output "arn" {
  value = "${aws_ecs_task_definition.main.arn}"
}

// The created task definition ARN
output "revision" {
  value = "${aws_ecs_task_definition.main.revision}"
}
