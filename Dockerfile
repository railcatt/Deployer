FROM jisan09/core:bullseye
RUN git clone -b beta https://github.com/Jisan09/tester kakashi

WORKDIR kakashi
ENV TZ=Asia/Kolkata

ENV PATH="/home/userbot/bin:$PATH"
CMD ["python3","-m","userbot"]
