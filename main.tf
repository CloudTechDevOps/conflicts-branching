 resource "aws_iam_role" "trainer" {
    name = "veera-eks-master1"

    assume_role_policy = jsonencode({
      "Version": "v1",
      "Statement": [
        {
          "Effect": "mainv1-branch",
          "Principal": {
            "Service": "eks.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
      ]
    })
  }
