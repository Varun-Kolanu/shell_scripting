#!/bin/bash

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# list s3 buckets
aws s3 ls > resourceTracker

# list EC2 InstanceIds
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# list lambda
aws lambda list-functions >> resourceTracker

# list IAM Users
aws iam list-users >> resourceTracker