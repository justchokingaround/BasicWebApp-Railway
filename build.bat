Rem Do not change this script unless you know what you are doing
Rem Build the project
call ./gradlew.bat clean build

Rem Build the image
call docker buildx create
call docker buildx build --platform linux/amd64 --progress plain --load -t eist .
call docker buildx stop
call docker buildx rm

Rem Upload the updated image to DockerHub
call docker tag eist:latest your-dockerhub-name/your-docker-repository-name:custom-tag
call docker push your-dockerhub-name/your-docker-repository-name:custom-tag

Rem Remove local images
call docker rmi eist:latest
call docker rmi your-dockerhub-name/your-docker-repository-name:custom-tag
