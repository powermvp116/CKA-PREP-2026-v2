# Create namespace
kubectl create namespace argocd

# Add repo and template manifests (CRDs not installed)
helm repo add argocd https://argoproj.github.io/argo-helm
helm repo update
helm template argocd argo/argo-cd --version 7.7.3 --set crds.install=false --namespace argocd > argo-helm.yaml
cat argo-helm.yaml   # confirm output
