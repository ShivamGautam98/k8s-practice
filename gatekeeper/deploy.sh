# get namespaces
kubectl get ns 
# kustomize build . | kubectl apply -f -
# install gatekeeper
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/master/deploy/gatekeeper.yaml
# get namespaces
kubectl get ns 
kubectl get all -n gatekeeper-system
kubectl get crd | grep -i gatekeeper
# check for violations
kubectl describe  k8srequiredlabels pod-must-have-app-label
kubectl get constraint
kubectl get constraintTemplate
kubectl describe constraintTemplate k8srequiredlabels

cd ./gatekeeper
kubectl apply -f https://raw.githubusercontent.com/open-policy-agent/gatekeeper/master/deploy/gatekeeper.yaml
kubectl apply -f ConstraintTemplate.yaml
kubectl apply -f pod-must-have-app-label.yaml
kubectl apply -f service-must-label-state.yaml
cd ../demo-app
kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml
