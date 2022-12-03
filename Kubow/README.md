[//]: # "Sirve para dar una prioridad a los pods, para que no se peleen por los recursos del cluster"
kubectl apply -f ./Evaluation-ZNN/VersionC-WithFailureManagerMetaController/MetaController/priorityObjectsK8s/
[//]: # "Inicializa las herramientas de monitoreo(metricas)"
kubectl apply -k ./Evaluation-ZNN/tools/monitoring/
[//]: # "nose"
kubectl apply -k ./Evaluation-ZNN/VersionA-Monolithic/TargetSystem/kube-znn/overlay/default/
[//]: # "nose"
kubectl apply -f ./Evaluation-ZNN/tools/nginxc-ingress/
[//]: # "nose"
kubectl apply -k ./Evaluation-ZNN/VersionA-Monolithic/kubow/overlay/kube-znn
[//]: # "nose"
kubectl apply -f ./Evaluation-ZNN/VersionC-WithFailureManagerMetaController/MicroControllers/tailored_based/k8s/
[//]: # "nose"
kubectl apply -k ./Evaluation-ZNN/tools/k6/

kubectl delete -k ./Evaluation-ZNN/tools/monitoring/
kubectl delete -k ./Evaluation-ZNN/VersionA-Monolithic/TargetSystem/kube-znn/overlay/default/
kubectl delete -f ./Evaluation-ZNN/tools/nginxc-ingress/
kubectl delete -k ./Evaluation-ZNN/VersionA-Monolithic/kubow/overlay/kube-znn
kubectl delete -k ./Evaluation-ZNN/tools/k6/
