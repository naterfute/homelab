.POSIX:

env ?= prod
export KUBECONFIG = $(shell pwd)/../metal/kubeconfig-${env}.yaml

.PHONY: bootstrap
bootstrap:
	ansible-playbook \
		bootstrap.yml
