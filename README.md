# docker-aws-cli
AWS CLI dockerised. Current version: 1.10.6

Sample usage:
```bash
docker run --rm -v aws-config:/root/.aws/config mohamnag/aws-cli aws s3 ls
```


where `aws-config` a valid configuration file is similar to below containing but not limited to credentials:

```
[default]
region = ...
aws_access_key_id = ...
aws_secret_access_key = ...
```
