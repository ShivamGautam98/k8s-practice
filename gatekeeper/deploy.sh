# Useful kubectl Commands for OPA Gatekeeper:

# 1. Apply a Constraint Template:
#    kubectl apply -f constraint-template.yaml

# 2. Apply a Constraint Resource:
#    kubectl apply -f constraint-resource.yaml

# 3. Get All Constraint Templates:
#    kubectl get constrainttemplates

# 4. Get All Constraint Resources:
#    kubectl get constraints

# 5. Describe a Constraint Template:
#    kubectl describe constrainttemplate <template-name>

# 6. Describe a Constraint Resource:
#    kubectl describe constraint <constraint-name>

# 7. Delete a Constraint Template:
#    kubectl delete constrainttemplate <template-name>

# 8. Delete a Constraint Resource:
#    kubectl delete constraint <constraint-name>

















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
# 1. ConstraintTemplates - Diff types of parameters (Labels etc)
# 2. Policies exercised to be on Pods, Services, etc
# 3. Kustomization
# 4. Deploy multiple ConstraintTemplates and set of policies for each
# 5. Deploy only policies for the ConstraintTemplates that exist already with GateKeeper
# 6. Edit/Modify/Update a existing policy with GateKeeper
# 7. Folders  
# 8. Querying Gatekeeper for cionstraint templates
# 9. Can we disable any policies( Constraint/ contr )
# 10. Can you version the policy 

