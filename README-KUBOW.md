![](documents/Kubow/kubow-logo-right.png)

to re-tag the images and push to your dockerhub repository:

```
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
```

Example

```
docker tag mean-nginx:latest nau1/mean-nginx:latest
docker push nau1/mean-nginx:latest
```

---

To run kubow, frist run minikube in your pc:

```
minikube delete
minikube start --cpus=5 --memory=6000 --vm-driver hyperv --kubernetes-version=v1.16.10
```

to run the aplication run this in the command line:

```
kubectl apply -f ./MetaController/priorityObjectsK8s/
kubectl apply -k ./Kubow/tools/monitoring/
kubectl apply -k ./manifest/overlay/default/
kubectl apply -f ./Kubow/tools/nginxc-ingress/
kubectl apply -k ./Kubow/overlay/


kubectl apply -k ./Kubow/tools/k6/
kubectl delete -k ./Kubow/tools/k6/
```

### query prometheus in K8s

kubectl port-forward pod/prometheus-d4499d495-jkg7g 9090:9090

### Grafana

kubectl port-forward pod/grafana-b659fcdd9-dq5nl 3000:3000

### Nginx-Ingress

kubectl port-forward pod/nginx-ingress-7f5885d87c-tzc7c 80:80
