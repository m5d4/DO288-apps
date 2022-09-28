#!/bin/bash

#source /usr/local/etc/ocp4.config
source post-commit/myocp4.config
oc set build-hook bc/hook --post-commit --command -- \
bash -c "\"curl -s -S -i -X POST http://builds-for-managers-${PROJECT}.apps.${RHT_OCP4_WILDCARD_DOMAIN}/api/builds -f -d 'developer=\${DEVELOPER}&git=\${OPENSHIFT_BUILD_SOURCE}&project=\${OPENSHIFT_BUILD_NAMESPACE}'\""
#bash -c "\"curl -s -S -i -X POST http://builds-for-managers-${PROJECT}.${RHT_OCP4_WILDCARD_DOMAIN}/api/builds -f -d 'developer=\${DEVELOPER}&git=\${OPENSHIFT_BUILD_SOURCE}&project=\${OPENSHIFT_BUILD_NAMESPACE}'\""
#bash -c "\"curl -s -S -i -X POST http://builds-for-managers-${RHT_OCP4_DEV_USER}-post-commit.${RHT_OCP4_WILDCARD_DOMAIN}/api/builds -f -d 'developer=\${DEVELOPER}&git=\${OPENSHIFT_BUILD_SOURCE}&project=\${OPENSHIFT_BUILD_NAMESPACE}'\""
