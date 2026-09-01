use minikube docker deamon : eval $(minikube docker-env)

helm upgrade prometheus prometheus-community/kube-prometheus-stack \
-n monitoring \
--reuse-values \
--set prometheus.prometheusSpec.enableRemoteWriteReceiver=true



cp ~/kubeconfig-demo-k8s.yaml ~/.kube/config

cp ~/kubeconfig-petclinic-monitoring-k8s.yaml ~/.kube/config
