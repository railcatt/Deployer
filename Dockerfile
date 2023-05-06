FROM jisan09/core:bullseye
RUN git clone -b rail https://github.com/Jisan09/tester kakashi

WORKDIR kakashi
ENV TZ=Asia/Kolkata

ENV PATH="/home/app/bin:$PATH"

CMD ["python3","-m","app"]
