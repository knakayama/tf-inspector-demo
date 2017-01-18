output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}

output "resource_group_arn" {
  value = "${aws_inspector_resource_group.inspector.arn}"
}

output "assessment_target_arn" {
  value = "${aws_inspector_assessment_target.inspector.arn}"
}

output "assessment_template_arn" {
  value = "${aws_inspector_assessment_template.inspector.arn}"
}
