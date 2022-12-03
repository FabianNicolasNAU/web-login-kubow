![](documents/Kubow/kubow-logo-right.png)

To run kubow, frist run minikube in your pc:

```
minikube delete
minikube start --cpus=5 --memory=8192 --vm-driver hyperv --kubernetes-version=v1.16.10
```

to run the aplication run this in the command line:

```
kubectl apply -f ./MetaController/priorityObjectsK8s/
kubectl apply -k ./Kubow/tools/monitoring/
kubectl apply -k ./manifest/overlay/default/
```
