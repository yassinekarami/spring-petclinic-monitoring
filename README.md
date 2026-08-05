use minikube docker deamon : eval $(minikube docker-env)

helm upgrade prometheus prometheus-community/kube-prometheus-stack \
-n monitoring \
--reuse-values \
--set prometheus.prometheusSpec.enableRemoteWriteReceiver=true
