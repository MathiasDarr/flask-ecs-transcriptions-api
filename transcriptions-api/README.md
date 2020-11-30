
aws ecs describe-task-definition --task-definition flask-users:2
{
    "taskDefinition": {
        "taskDefinitionArn": "arn:aws:ecs:us-west-2:710339184759:task-definition/flask-servicesTaskDefinition:1",
        "containerDefinitions": [
            {
                "name": "flask-services",
                "image": "710339184759.dkr.ecr.us-west-2.amazonaws.com/transcriptions-users:latest",
                "cpu": 0,
                "links": [],
                "portMappings": [
                    {
                        "containerPort": 5000,
                        "hostPort": 5000,
                        "protocol": "tcp"
                    }
                ],
                "essential": true,
                "entryPoint": [],
                "command": [],
                "environment": [],
                "environmentFiles": [],
                "mountPoints": [],
                "volumesFrom": [],
                "secrets": [],
                "dnsServers": [],
                "dnsSearchDomains": [],
                "extraHosts": [],
                "dockerSecurityOptions": [],
                "dockerLabels": {},
                "ulimits": [],
                "logConfiguration": {
                    "logDriver": "awslogs",
                    "options": {
                        "awslogs-group": "/ecs/flask-servicesTaskDefinition",
                        "awslogs-region": "us-west-2",
                        "awslogs-stream-prefix": "ecs"
                    },
                    "secretOptions": []
                },
                "systemControls": []
            }
        ],
        "family": "flask-servicesTaskDefinition",
        "taskRoleArn": "arn:aws:iam::710339184759:role/flask-servicesTaskRole",
        "executionRoleArn": "arn:aws:iam::710339184759:role/flask-servicesExecutionRole",
        "networkMode": "awsvpc",
        "revision": 1,
        "volumes": [],
        "status": "ACTIVE",
        "requiresAttributes": [
            {
                "name": "com.amazonaws.ecs.capability.logging-driver.awslogs"
            },
            {
                "name": "ecs.capability.execution-role-awslogs"
            },
            {
                "name": "com.amazonaws.ecs.capability.ecr-auth"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.19"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.17"
            },
            {
                "name": "com.amazonaws.ecs.capability.task-iam-role"
            },
            {
                "name": "ecs.capability.execution-role-ecr-pull"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.18"
            },
            {
                "name": "ecs.capability.task-eni"
            }
        ],
        "placementConstraints": [],
        "compatibilities": [
            "EC2",
            "FARGATE"
        ],
        "requiresCompatibilities": [
            "FARGATE"
        ],
        "cpu": "256",
        "memory": "512"
    }
