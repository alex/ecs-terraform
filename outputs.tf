output "hello-world" {
  value = "${aws_elb.test-http.dns_name}/hello-world"
}
