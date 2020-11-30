#!/bin/bash

if [[ -z $2 ]]
then
  stackname=transcription-stack
else
  stackname=$2
fi

aws cloudformation deploy \
      --template-file sg_template.yaml \
      --stack-name ${stackname} \
      --capabilities CAPABILITY_NAMED_IAM
