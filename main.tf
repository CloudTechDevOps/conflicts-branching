 resource "aws_iam_role" "student" {
    name = "veera-eks-master1"

    assume_role_policy = jsonencode({
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "deny",
          "Principal": {
            "Service": "eks.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    })
  }
