hal config provider docker-registry enable

hal config provider docker-registry account add simple-webapp --address index.docker.io --repositories jeromeevangelista/simple-webapp

clear

echo "=== Registry Sucessfully Added ==="
