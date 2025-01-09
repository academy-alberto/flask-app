docker exec halyard hal config canary enable

docker exec halyard hal config canary prometheus enable

docker exec halyard hal config canary edit --default-metrics-store prometheus

docker exec halyard hal config canary prometheus account add prom-account --base-url http://$(kubectl get svc prometheus-stack-kube-prom-prometheus -n monitoring -o jsonpath='{.spec.clusterIP}{"\n"}'):9090

docker exec halyard hal config canary edit --default-metrics-account prom-account 

docker exec halyard hal config canary aws enable

docker exec halyard hal config canary aws account add minio-canary --bucket canary --endpoint http://$(kubectl get svc -n minio -o wide | awk 'NR>1 {print $3}'):9000 --access-key-id minio --secret-access-key minio123

docker exec halyard hal config canary edit --default-storage-account minio-canary 

docker exec halyard hal config canary aws edit --s3-enabled true

clear

echo "=== Canary Setup Sucessfully ==="
