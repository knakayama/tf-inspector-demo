resource "aws_inspector_resource_group" "inspector" {
  tags {
    inspector = "true"
  }
}

resource "aws_inspector_assessment_target" "inspector" {
  name               = "tf-inspector-demo"
  resource_group_arn = "${aws_inspector_resource_group.inspector.arn}"
}

resource "aws_inspector_assessment_template" "inspector" {
  name       = "tf-inspector-demo"
  target_arn = "${aws_inspector_assessment_target.inspector.arn}"
  duration   = 3600

  rules_package_arns = [
    "arn:aws:inspector:ap-northeast-1:406045910587:rulespackage/0-7WNjqgGu",
    "arn:aws:inspector:ap-northeast-1:406045910587:rulespackage/0-bBUQnxMq",
    "arn:aws:inspector:ap-northeast-1:406045910587:rulespackage/0-gHP9oWNT",
    "arn:aws:inspector:ap-northeast-1:406045910587:rulespackage/0-knGBhqEu",
  ]
}
