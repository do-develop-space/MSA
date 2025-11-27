# clean
./gradlew clean bootjar

# build
docker build -t config:1.0.0 .

# k8s deploy
kubectl apply -f ./k8s/config.yaml
kubectl get pod -o wide