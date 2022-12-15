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
kubectl apply -k ./Kubow/overlay/
```

### query prometheus in K8s

kubectl port-forward pod/prometheus-558fb88dd5-w7ttl 9090:9090

### Grafana

kubectl port-forward pod/grafana-b659fcdd9-rx9bj 3000:3000
