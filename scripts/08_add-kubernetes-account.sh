docker exec halyard hal config provider kubernetes enable

docker exec halyard hal config provider kubernetes account add my-k8s-account --context $(kubectl config current-context)
