docker build -t armangurkan1/multi-client:latest -f ./client/Dockerfile ./client
docker build -t armangurkan1/multi-server:latest -f ./server/Dockerfile ./server
docker build -t armangurkan1/multi-worker:latest -f ./worker/Dockerfile ./worker
docker push armangurkan1/multi-client:latest
docker push armangurkan1/multi-server:latest
docker push armangurkan1/multi-worker:latest

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=armangurkan1/multi-server
kubectl set image deployments/client-deployment client=armangurkan1/multi-client
kubectl set image deployments/worker-deployment worker=armangurkan1/multi-worker
