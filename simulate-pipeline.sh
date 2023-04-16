export IMAGE_FULLNAME_TAG=asia-southeast2-docker.pkg.dev/polished-cocoa-383113/helloworld-willy/serverless-exploration:v0.0.1-rc1
make build-alpine
docker build -f ./utils/Dockerfile -t ${IMAGE_FULLNAME_TAG} .
gcloud auth activate-service-account  docker-willy@polished-cocoa-383113.iam.gserviceaccount.com --key-file=serverless-exploration.json
docker push ${IMAGE_FULLNAME_TAG}