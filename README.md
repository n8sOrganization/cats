# cats

Simple containerized python/flask app that displays a random cat gif. The code contains an outdated flask dependency that trivy will catch and prevent build until corrected. 

This repo uses github actions to build and push the container on update of main branch. It then updates the k8s deployment to the new image tag. Argo CD syncs this with the k8s cluster. Trivy is used in the github actions to check for issues before building image, and after.
