FROM jisan09/core:bullseye
RUN git clone -b beta https://github.com/Jisan09/tester kakashi

WORKDIR kakashi
ENV TZ=Asia/Kolkata

CMD ["python3","-m","app"]
