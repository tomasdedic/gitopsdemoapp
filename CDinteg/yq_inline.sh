#!/usr/bin/env bash
#yq write -i argo_repo/deploy/deployment.yaml 'spec.template.spec.containers.*.image' $(yq read image_tags.yaml image)
yq w -i argo_repo/smart-poets-delivery/deployment.yaml 'spec.template.spec.containers.[0].image' $(yq r CDinteg/image_tags.yaml image)
# yq write -i argo_repo/deploy_proxy/apps_v1_deployment_proxy.yaml 'spec.template.spec.containers.[1].image' $(yq read argo_repo/image_tags.yaml image)

