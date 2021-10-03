#!/bin/bash

project_name="rhpam-mod1"
oc project ${project_name}
oc delete all -l app=test-app

oc new-app --strategy="source" \
--name="test-app" \
--code="https://github.com/relessawy/prj-basics-final"

oc expose svc/test-app
