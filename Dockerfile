FROM ghcr.io/graalvm/graalvm-ce:ol9-java17-22.3.1

COPY ./target/issue-springconfig-2224 app
CMD [ "sh", "-c", "./app" ]
