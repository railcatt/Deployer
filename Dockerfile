FROM catub/catuserbot:latest
#FROM catub/core:bullseye
RUN git clone -b beta https://github.com/Jisan09/tester

WORKDIR catuserbot
ENV TZ=Asia/Kolkata

ENV PATH="/home/userbot/bin:$PATH"
CMD ["python3","-m","userbot"]
