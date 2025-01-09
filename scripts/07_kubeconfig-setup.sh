kubectl config set-credentials minikube --client-certificate=$(kubectl config view --raw -o yaml | grep 'client-certificate:' | awk '{print $2}') --client-key=$(kubectl config view --raw -o yaml | grep 'client-key:' | awk '{print $2}') --embed-certs=true

kubectl config set-cluster minikube --certificate-authority=$(kubectl config view --raw -o yaml | grep 'certificate-authority:' | awk '{print $2}') --embed-certs=true

docker exec halyard mkdir /home/spinnaker/.kube

docker cp ~/.kube/config halyard:/home/spinnaker/.kube/config

