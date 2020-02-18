echo "Launching $BUILD_NAME IN AMAZON ECS"
ecs-cli configure -region us-east-2 -access-key $AWS_ACCESS_KEY -secret-key $AWS_SECRET_KEY -cluster spmia-chapter10
ecs-cli compose --file docker/common/docker-compose.yml up
rm -rf ~/.ecs
