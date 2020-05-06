ARG BASE_IMAGE

FROM ${BASE_IMAGE}
COPY src/java-cpu /workspace
WORKDIR /workspace

ENV DEFAULT_JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Djava.net.preferIPv4Stack=true"

RUN javac main.java
CMD ["java", "main"]