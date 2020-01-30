istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/client-deployment.yaml --output ./k8s/client-deployment.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/server-deployment.yaml --output ./k8s/server-deployment.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/worker-deployment.yaml --output ./k8s/worker-deployment.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/redis-deployment.yaml --output ./k8s/redis-deployment.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/postgres-deployment.yaml --output ./k8s/postgres-deployment.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/client-cluster-ip-service.yaml --output ./k8s/client-cluster-ip-service.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/server-cluster-ip-service.yaml --output ./k8s/server-cluster-ip-service.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/postgres-cluster-ip-service.yaml --output ./k8s/postgres-cluster-ip-service.yaml
istioctl kube-inject --injectConfigFile ./k8s/inject-config.yaml --meshConfigFile ./k8s/mesh-config.yaml --filename ./k8s/redis-cluster-ip-service.yaml --output ./k8s/redis-cluster-ip-service.yaml
kubectl apply -f ./k8s --validate=false
