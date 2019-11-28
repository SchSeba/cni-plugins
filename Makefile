VERSION="v0.8.3"

all: download build push

download:
	wget https://github.com/containernetworking/plugins/releases/download/${VERSION}/cni-plugins-linux-amd64-${VERSION}.tgz

build:
	docker build -t quay.io/kubevirt/cni-default-plugins:${VERSION} .

push:
	docker push quay.io/kubevirt/cni-default-plugins:${VERSION}
