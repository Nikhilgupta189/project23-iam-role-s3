# Project 23: IAM Role-Based S3 Access

## Objective
Securely access Amazon S3 from an EC2 instance using an IAM role without configuring permanent AWS access keys.

## Technologies Used
- AWS IAM
- Amazon EC2
- Amazon S3
- AWS CLI
- Amazon Linux 2023
- EC2 User Data

## Implementation
1. Verified an existing IAM role with EC2 trust permissions.
2. Confirmed the role had the AmazonS3FullAccess policy.
3. Verified the IAM instance profile.
4. Launched an Amazon Linux EC2 instance.
5. Attached the IAM role during instance creation.
6. Configured User Data to execute AWS CLI commands.
7. Verified the IAM role identity using AWS STS.
8. Successfully listed an S3 object using the attached IAM role.

## Resources
- EC2 Instance: `project23-iam-s3-test`
- IAM Role: `azltt0222435e27-project23-ec2-s3-role`
- IAM Instance Profile: `azltt0222435e27-project23-ec2-s3-profile`
- AWS Region: `ap-south-1`
- S3 Bucket: `project22-logs-590507089733-1795263038`

## Verification

Executed the following commands from EC2 User Data:

`aws sts get-caller-identity`

`aws s3 ls s3://project22-logs-590507089733-1795263038/logs/ --region ap-south-1`

The output confirmed that the EC2 instance assumed the assigned IAM role and successfully listed `app.log`.

**Result:** `PROJECT23_S3_ACCESS_SUCCESS`

## Screenshots
- `01-ec2-iam-role.png` — EC2 instance with IAM role attached.
- `02-s3-access-success.png` — Successful AWS CLI S3 access through the IAM role.

## Conclusion
Successfully implemented IAM role-based access between Amazon EC2 and Amazon S3 without manually configuring permanent AWS access keys on the EC2 instance.
