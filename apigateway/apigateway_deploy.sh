#cp ./src/resources/bootstrap_k8s.yml

# clean
./gradlew clean bootjar

# build
docker build -t apigateway:1.0.0 .

# k8s deploy
kubectl apply -f ./k8s/apigateway.yaml
kubectl get pod -o wide