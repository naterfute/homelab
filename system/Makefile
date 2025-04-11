.POSIX:

export KUBECONFIG = $(shell pwd)/../metal/kubeconfig.yaml
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

.PHONY: bootstrap
bootstrap:
	ansible-playbook \
		bootstrap.yml
