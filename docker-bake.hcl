target "docker-metadata-action" {}

target "build" {
  inherits   = ["docker-metadata-action"]
  context    = "./"
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64"]
  tags       = ["damacus/knife-lambda:latest"]
}
