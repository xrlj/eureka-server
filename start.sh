#!/bin/bash

echo "》》》》正在启动服务"
java -cp /app:/app/lib/* com.xrlj.eurekaserver.EurekaServerApplication
echo "》》》》服务启动结束"

#taif -f /logs/eureka-server.log