#!/bin/bash

declare -a elevated_resources=(
    "dynatrace_activegate_token"
    "dynatrace_activegate_updates"
    "dynatrace_json_dashboard"
)

ERROR=false

pwd
ls -al 

for val in ${elevated_resources[@]}; do

    if grep -q $val plan.out; then
        echo "Terraform plan found a resource of type '$val', this could impact observabilty of the whole program, please remove it from your terraform code."
        ERROR=true
    fi
 
done

if [ "$ERROR" = true ] ; then
    exit 1
fi