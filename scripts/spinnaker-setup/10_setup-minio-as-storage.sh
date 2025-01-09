docker exec halyard mkdir -p /home/spinnaker/default/profiles

docker exec halyard sh -c 'echo "spinnaker.s3.versioning: false" > /home/spinnaker/default/profiles/front50-local.yml'

docker exec halyard hal config storage s3 edit --endpoint http://$(kubectl get svc -n minio -o wide | awk 'NR>1 {print $3}'):9000 --access-key-id minio --secret-access-key minio123

docker exec halyard hal config storage edit --type s3

clear

echo "=== Setup  Minio as Storage Completed Sucessfully ==="
