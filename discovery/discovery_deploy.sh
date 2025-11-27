# clean
./gradlew clean bootjar

# build
docker build -t discovery:1.0.0 .

# k8s deploy
kubectl apply -f ./k8s/discovery.yaml
kubectl get pod -o wide