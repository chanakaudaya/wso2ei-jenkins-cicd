#!/bin/sh
cd JenkinsCICDSample
mvn clean install
cd HelloCompositeApp
mvn clean deploy -Dmaven.deploy.skip=true -Dmaven.car.deploy.skip=false