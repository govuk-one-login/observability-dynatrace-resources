# observability-dynatrace-resources

Repository for the creation of Dynatrace resources in produtcion Dynatrace account.

## Usage

- Create resources in the non prod environment.
- Leverage the Dynatrace terraform providers export [utility](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/guides/export-v2) to get the existing resources.
    - Assume a role in you usual AWS account
    - The IAM role will need permission to pull secrets and kms from the observability account
        - `arn:aws:secretsmanager:eu-west-2:216552277552:secret:DynatraceNonProductionVariables`
            - `secretsmanager:GetSecretValue`
        - `arn:aws:secretsmanager:eu-west-2:216552277552:secret:DynatraceProductionVariables`
            - `secretsmanager:GetSecretValue`
        - `arn:aws:secretsmanager:eu-west-2:216552277552:secret:*`
            - `secretsmanager:ListSecrets`
        - `arn:aws:kms:eu-west-2:216552277552:key/*`
            - `kms:Decrypt`
    - Use the AWS cli to get the read only Dynatrace PaaS token from secrets with the the following
        - ``

aws secretsmanager get-secret-value --secret-id DynatraceProductionVariables | jq ".SecretString | fromjson | .DT_NON_PROD_GITHUB_READ_TOKEN" -r
    

slo.read
entities.read
ReadConfig
settings.read

DT_NON_PROD_GITHUB_READ_TOKEN