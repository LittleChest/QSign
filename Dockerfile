FROM amazoncorretto:17

WORKDIR /app
COPY . .

EXPOSE 80
ENV PORT=80

CMD "cat ./txlib/9.0.56/QQ.apk1 ./txlib/9.0.56/QQ.apk2 ./txlib/9.0.56/QQ.apk3 ./txlib/9.0.56/QQ.apk4 > ./txlib/9.0.56/QQ.apk"
CMD "rm -f ./txlib/9.0.56/QQ.apk1 ./txlib/9.0.56/QQ.apk2 ./txlib/9.0.56/QQ.apk3 ./txlib/9.0.56/QQ.apk4"
CMD ./bin/unidbg-fetch-qsign --basePath=txlib/9.0.56
