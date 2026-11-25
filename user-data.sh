#!/bin/bash

exec > >(tee /var/log/project23-test.log /dev/console) 2>&1

export AWS_DEFAULT_REGION=ap-south-1

echo "===== PROJECT 23 IAM ROLE TEST ====="

echo "AWS CLI version:"
aws --version

echo "IAM role identity:"
aws sts get-caller-identity

echo "Testing S3 access:"
if aws s3 ls \
  s3://project22-logs-590507089733-1795263038/logs/ \
  --region ap-south-1
then
  echo "PROJECT23_S3_ACCESS_SUCCESS"
else
  echo "PROJECT23_S3_ACCESS_FAILED"
fi

echo "===== PROJECT 23 TEST FINISHED ====="
