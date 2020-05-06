ARG BASE_IMAGE

FROM ${BASE_IMAGE}
COPY src/java-cpu /workspace
WORKDIR /workspace
RUN javac main.java
CMD ["java", "main"]