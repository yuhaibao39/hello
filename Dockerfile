#build command： docker build -t springboot-k8s:v1.1.0 .
FROM openjdk:8-jre-alpine
VOLUME /tmp
ADD  ./target/*.jar /app.jar
ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#设置变量 JAVA_OPTS
ENV JAVA_OPTS=""
#这样写会以shell方式执行，会替换变量
ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar
#下面这样写法不行，他只是拼接不会识别变量
#ENTRYPOINT ["java","${JAVA_OPTS}","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
EXPOSE 8080