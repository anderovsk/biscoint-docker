FROM node:lts-alpine
WORKDIR /biscoint
RUN apk update && \
    apk add git && \
    git clone https://github.com/Biscoint/biscoint-arbitrage-bot.git /biscoint/ && \
    mv /biscoint/config.template.json /biscoint/config.json
COPY config-robot.sh /biscoint/config-robot.sh
RUN chmod +x /biscoint/config-robot.sh
CMD [ "sh", "/biscoint/config-robot.sh" ]