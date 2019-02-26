workflow "Release" {
  on = "push"
  resolves = ["Docker Push"]
}

action "Docker Login" {
  uses = "actions/docker/login@master"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Docker Build" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "build -t harrygulliford/bugsnag-notify:latest ."
}

action "Docker Push" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Docker Login", "Docker Build"]
  args = "push harrygulliford/bugsnag-notify:latest"
}
