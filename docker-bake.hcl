target "docker-metadata-action" {}
target "github-metadata-action" {}

target "default" {
    inherits = [ "tcpproxy" ]
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "local" {
    inherits = [ "tcpproxy" ]
    tags = [ "swarmlibs/tcpproxy:local" ]
}

target "tcpproxy" {
    context = "."
    dockerfile = "Dockerfile"
    inherits = [
        "docker-metadata-action",
        "github-metadata-action",
    ]
}
