docker exec halyard hal config artifact s3 enable

docker exec halyard hal config artifact s3 account add my-minio --api-endpoint http://$(kubectl get svc -n minio -o wide | awk 'NR>1 {print $3}'):9000 --aws-access-key-id minio --aws-secret-access-key minio123

clear

echo "=== Add minio as Artifact Completed Sucessfully ==="
