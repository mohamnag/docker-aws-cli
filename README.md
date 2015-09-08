# docker-aws-cli
AWS CLI dockerised.

Sample usage:
```bash
docker run --rm -v aws-config:/root/.aws/config mohamnag/aws-cli aws s3 ls
```

where `aws-config` a valid configuration file is similar to below containing but not limited to credentials:

```
# this user is setup to have upload only rights into s3://sslc-db-backups bucket
[default]
region = ...
aws_access_key_id = ...
aws_secret_access_key = ...
```
