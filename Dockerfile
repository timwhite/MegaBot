FROM python:3

ENV DISCORD_TOKEN=
ENV DISCORD_ID=
ENV BOT_NAME=MegaBot
ENV LOG_URL=
ENV PANIC_WORD=
ENV PANIC_LOG_LEN=50

WORKDIR /MegaBot

COPY dependancies ./
RUN pip install --no-cache-dir -r dependancies

COPY . .

CMD [ "python", "./bot.py" ]
