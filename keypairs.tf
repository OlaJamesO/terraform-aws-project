resource "aws_key_pair" "jamesokey" {
  key_name   = "jamesokey"
  public_key = file(var.PUB_KEY_PATH)
}
