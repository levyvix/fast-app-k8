# fast-app-k8

docker build -t levyvix/k8s_fastapi:0.0.1 . 
docker image push levyvix/k8s_fastapi:0.0.1

cd kubernetes
kubectl apply -f .