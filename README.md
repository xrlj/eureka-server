# xrlj-eureka-server

https://spring.io/guides/gs/spring-boot-docker/

## 执行

    $ docker run -e "SPRING_PROFILES_ACTIVE=prod" -p 8080:8080 -t springio/gs-spring-boot-docker
    
    ----------------------
    
    docker run --restart=always --name eureka-server-test -e "SPRING_PROFILES_ACTIVE=test" -p 1111:1111 -t 120.79.2.30:8082/xrlj/eureka-server:0.0.1
    
    ------------------------------------
    
    docker run --restart=always --name eureka-server-test -e "SPRING_PROFILES_ACTIVE=test" -e "EUREKA_INSTANCE_IP-ADDRESS=ip" -p 1111:1111 -d ip:8082/xrlj/eureka-server:0.0.1