FROM catub/catuserbot:latest
RUN git clone https://github.com/TgCatUB/catuserbot

WORKDIR catuserbot
ENV TZ=Asia/Kolkata

ENV PATH="/home/userbot/bin:$PATH"
CMD ["python3","-m","userbot"]
