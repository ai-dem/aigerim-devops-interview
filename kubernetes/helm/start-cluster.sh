#!/bin/bash

set -xe

function install_example () {
	kubectl apply -f example/nginx-application.yaml
}

function install_istio () {
	kubectl apply -f manifests/istio-install.yaml
	kubectl apply -f manifests/istio-operator.yaml
	# wait for kind: Gateway available
        until kubectl get gateways;
        do
          sleep 5
        done
	kubectl apply -f manifests/istio-gateway.yaml
}

function restart_cluster () {
	kind delete cluster || true
	kind create cluster --config=./kind-config.yaml
}

restart_cluster
install_istio
