kubectl apply -f ./network-policy-allow-web.yaml
kubectl apply -f ./network-policy-deny-all.yaml
kubectl apply -f ./pod-dev-client.yaml
kubectl apply -f ./pod-prod-client.yaml
kubectl apply -f ./pod-php-spitback.yaml
