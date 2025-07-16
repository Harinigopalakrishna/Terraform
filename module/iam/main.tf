resource "aws_iam_user" "devops" {
    count = 5
    name = "user-${count.index+1}"

}

resource "aws_iam_user" "cloud" {
    for_each = toset(["xxx","yyy","zzz"])
    name = each.value

}
resource "aws_iam_user" "master" {
    name = var.index

}