#!/bin/bash

#构建docker 镜像并上传到私服
mvn clean install dockerfile:build
sleep 2
mvn clean install dockerfile:push
