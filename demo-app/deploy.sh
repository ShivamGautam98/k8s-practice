kubectl get node
kubectl get pod # get all pods
kubectl apply -f mongo-config.yaml
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f webapp.yaml
kubectl get all # get all components
kubectl get configmap
kubectl get secret
kubectl get svc # for service
# minikube ip # known issue with Minikube 
minikube service webapp-service # https://minikube.sigs.k8s.io/docs/handbook/accessing/#example-of-nodeport
# kubectl get <component name> : Brief Description
# kubectl describe <component name> : Detailed Description
# kubectl logs <pod-id> : For troubleshooting