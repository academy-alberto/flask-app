docker exec -it minikube mkdir /data/jenkins
kubectl apply -f ../../manifest/jenkins/jenkins-ns.yml
kubectl apply -f ../../manifest/jenkins/jenkins-pv.yml
kubectl apply -f ../../manifest/jenkins/jenkins-pvc.yml
kubectl apply -f ../../manifest/jenkins/.
