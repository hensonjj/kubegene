#!/usr/bin/env bash

# Copyright 2018 The Kubegene Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o errexit
set -o nounset
set -o pipefail

export KUBERNETES_VERSION=v1.12.0
export MINIKUBE_VERSION = v.0.30.0

curl -Lo minikube https://storage.googleapis.com/minikube/releases/$MINIKUBE_VERSION/minikube-linux-amd64 && \
chmod +x minikube && \
sudo cp minikube /usr/local/bin/ && \
rm minikube

curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$KUBERNETES_VERSION/bin/linux/amd64/kubectl && \
chmod +x kubectl && \
sudo cp kubectl /usr/local/bin/ && \
rm kubectl
