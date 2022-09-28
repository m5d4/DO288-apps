#!/bin/bash

source build-app/myocp4.config

oc new-app --name simple --build-env npm_config_registry=http://invalid-server:8081/repository/nodejd https://github.com/m5d4/DO288-apps --context-dir build-app
