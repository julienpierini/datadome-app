# datadome-app
Create a simple web application that returns a hello world homepage.

# Build your image
```
$ docker build . -t httpapp:v0.1.0
```

# Test your image
```
$ docker run --name httpapp -d -p 8080:80 httpapp:v0.1.0
$ curl http://localhost:8080
$ docker logs httpapp
```

# Push your image on a private ECR

Push your image to the ecr repository created by this project (change `$ACCOUNT_ID` with your value):
```
$ aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.eu-west-1.amazonaws.com
$ docker tag httpapp:v0.1.0 $ACCOUNT_ID.dkr.ecr.eu-west-1.amazonaws.com/httpapp-poc-dev:$TAG_VERSION
```