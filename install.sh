helm install -f values/adservice-values.yaml emailservice charts/microservices
helm install -f values/cartservice-values.yaml cartservice charts/microservices
helm install -f values/checkoutservice-values.yaml checkoutservice charts/microservices
helm install -f values/currencyservice-values.yaml currencyservice charts/microservices
helm install -f values/emailservice-values.yaml emailservice charts/microservices
helm install -f values/frontend-values.yaml frontend charts/microservices
helm install -f values/paymentservice-values.yaml paymentservice charts/microservices
helm install -f values/productcatalogservice-values.yaml productcatalogservice charts/microservices
helm install -f values/recommendationservice-values.yaml recommendationservice charts/microservices
helm install -f values/shippingservice-values.yaml shippingservice charts/microservices

helm install -f values/redis-cart-values.yaml redis-cart charts/redis-cart