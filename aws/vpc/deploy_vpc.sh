#!/bin/bash

if [[ -z $2 ]]
then
  stackname=dakobed-vpc-stack
else
  stackname=$2
fi

aws cloudformation deploy \
    --template-file vpc_template.yaml \
    --stack-name ${stackname} \
    --capabilities CAPABILITY_NAMED_IAM
