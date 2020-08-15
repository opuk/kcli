export KUBEVIRT_VERSION={{ 'kubevirt/kubevirt' | githubversion(kubevirt_version) }}
echo "Deploying Kubevirt $KUBEVIRT_VERSION"
kubectl create -f https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/kubevirt-operator.yaml
kubectl create -f https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/kubevirt-cr.yaml
