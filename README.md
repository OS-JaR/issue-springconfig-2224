# issue-springconfig-2224
Demo project to reproduce spring-cloud-config issue 2224
see: https://github.com/spring-cloud/spring-cloud-config/issues/2224


1. create/clone app
2. build and run it with:

```
mvn clean package -U
docker build . -t local/issue2224
docker push local/issue2224
docker run local/issue2224
```
Now the error should be occur with terminal output like:

I could track it down to:

If you use this dependency:
```
<dependency>
	<groupId>org.springframework.cloud</groupId>
	<artifactId>spring-cloud-starter-config</artifactId>
</dependency>
```
and add as dependency this (or any third-party which has this as a dependency:
```
<dependency>
	<groupId>org.springframework.cloud</groupId>
	<artifactId>spring-cloud-starter-bootstrap</artifactId>
</dependency>
```

Than the error occurs.
