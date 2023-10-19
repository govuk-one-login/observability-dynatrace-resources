# observability-dynatrace-resources

Repository for the creation of Dynatrace resources in produtcion Dynatrace account.

## Usage

If this is you or your teams first time in, first check if you have a team folder under `terraform/teams/`. If a team folder does not then add one copying `terraform/teams/example`

Now you can create resources in the nonprod dynatrace environment end use the export utility that comes with the dynatrace provider to help you create you configuration for promotion to productio dynatrace. Follow the steps below:

- Create resources in the non prod environment.
- Leverage the Dynatrace terraform providers export [utility](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/guides/export-v2). To get the existing resources, you will need to:
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
        - `aws secretsmanager get-secret-value --secret-id DynatraceProductionVariables | jq ".SecretString | fromjson | .DT_NON_PROD_GITHUB_READ_TOKEN" -r`
    - Set the environment variables `DYNATRACE_ENV_URL` and `DYNATRACE_API_TOKEN` (see the previous step) as per the utility instructions.
    - set the environment variable `DYNATRACE_TARGET_FOLDER` to `../configuration`

Once you have completed the prerequisite steps above you can now run the following commands to get the current nonprod resources in a hcl format

```bash
cd terraform
terraform init -backend=false
# this path will vary depending on you machine and version of the provider at the time of use.
.terraform/providers/registry.terraform.io/dynatrace-oss/dynatrace/1.44.0/darwin_arm64/terraform-provider-dynatrace_v1.44.0 -export 
```
The above command will bring back most of the resources from the dynatrace nonprod environment and add it to a folder `./configuration`. This is limited by the export functionality of the resource and the scope of the PaaS token:

- entities.read
- ReadConfig
- settings.read
- slo.read

Some resources will only be exported if they are flagged e.g. [dashboards](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs/resources/json_dashboard#export-example-usage).

You can now find your resource in the `./configuration/modules` folder and use this to populate your teams folder e.g. `terraform/teams/example`

## Allowed resources

Curently the resources that can be promoted to the production Dynatrace environment are:

- dashboards
- slos