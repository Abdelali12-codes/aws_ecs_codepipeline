# aws_ecs_codepipeline


* create the ecs task definition using the below command:
```
aws ecs register-task-definition --cli-input-json file://taskdef.json
```

* create the ecs service using the below command:

```
aws ecs create-service --service-name my-service --cli-input-json file://create-service.json
```

* describe a service on the ecs cluster

```
aws ecs describe-services --cluster cluster-name --services service-name
```


### ECS standard deployment action

**in this deployment you must have imagedefinitions.json file on your source code or you can 
output it during the build stage in the buildspec.yml file, make sure to add this line n the post-build stage in the buildspec file**

```
printf '[{"name":"container_name","imageUri":"image_URI"}]' > imagedefinitions.json
```

### ECS (Blue/Green) deployment action

**in this deployment you must have imageDetail.json file on your source code or you can 
output it during the build stage in the buildspec.yml file, make sure to add this line n the post-build stage in the buildspec file**
```
printf '{"ImageURI":"%s"}' $REPOSITORY_URI:$IMAGE_TAG  > imageDetail.json
```
