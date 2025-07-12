
data "external" "my_ip" {
  program = ["powershell", "-Command", "Write-Output ('{\"ip\":\"' + (Invoke-WebRequest -Uri https://checkip.amazonaws.com -UseBasicParsing).Content.Trim() + '\"}')"]
}

locals {
  my_ip = "${data.external.my_ip.result.ip}/32"
}