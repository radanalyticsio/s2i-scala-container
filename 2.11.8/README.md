# Scala 2.11.8 Docker image

## Usage

```
s2i build https://github.com/elmiko/s2i-scala-container.git --context-dir=2.11.8/test/sbt-test-app elmiko/scala-2118-centos7 sbt-sample-app

docker run -d -p 8080:8080 sbt-sample-app

curl 127.0.0.1:8080
```
