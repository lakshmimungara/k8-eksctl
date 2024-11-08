# Helm
# curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
# chmod 700 get_helm.sh
# ./get_helm.sh
# echo "helm installation"

sudo curl -fsSL -o helm.tar.gz https://get.helm.sh/helm-v3.16.2-linux-amd64.tar.gz
sudo tar -zxvf helm.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
