# Do not change this script unless you know what you are doing
# Build the project
./gradlew clean build

# Build the image
docker buildx create
# docker buildx build --platform linux/amd64 --progress plain --load -t eist .
docker buildx build --platform linux/amd64 --progress plain --load -t eist .
docker buildx stop
docker buildx rm

# Upload the updated image to DockerHub
docker tag eist:latest chokerman/cocking:balls
docker push chokerman/cocking:balls

# Remove local images
docker rmi eist:latest
docker rmi chokerman/cocking:balls
