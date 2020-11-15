#!/bin/bash

echo "1. Launch an ECS cluster using the Cloudformation template"

aws cloudformation deploy \
--template-file infrastructure/ecs.yml \
--region us-east-1 \
--stack-name ecs-node \
--capabilities CAPABILITY_NAMED_IAM

echo "2. Deploy the services onto your cluster"

sh deploy.sh us-east-1 ecs-node