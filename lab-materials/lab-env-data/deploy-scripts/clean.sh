#!/bin/bash

kcli delete plan hub -y
systemctl stop podman-gitea podman-registry.service podman-webcache.service
podman rmi -f quay.io/alosadag/httpd:p8080 quay.io/mavazque/gitea:1.17.3 quay.io/mavazque/registry:2.7.1
rm -rf /opt/gitea/
rm -rf /opt/webcache/
rm -rf /opt/registry
rm -rf ~/.kcli
