if [ $# -eq 1 ]; then
    VERSION=$1

    bash -c "
    kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/${VERSION}/cert-manager.crds.yaml

    helm repo add jetstack https://charts.jetstack.io

    helm repo update

    helm install cert-manager jetstack/cert-manager \
    --namespace cert-manager \
    --create-namespace \
    --set startupapicheck.timeout=5m \
    --version ${VERSION}
    "
else
    echo "Cert-manager need version. Install like this command './cert-manager.sh ${VERSION}'"
fi