# aws_ecs_codepipeline


* create the ecs task definition using the below command:
```
aws ecs register-task-definition --cli-input-json file://taskdef.json
```

* create the ecs service using the below command:

```
aws ecs create-service --service-name my-service --cli-input-json file://create-service.json
``

* describe a service on the ecs cluster

```
aws ecs describe-services --cluster cluster-name --services service-name
```
