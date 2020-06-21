FROM node
WORKDIR /biscoint
RUN git clone https://github.com/Biscoint/biscoint-arbitrage-bot.git /biscoint/
RUN mv /biscoint/config.template.json /biscoint/config.json
COPY config-robot.sh /biscoint/config-robot.sh
RUN chmod +x /biscoint/config-robot.sh
CMD [ "/biscoint/config-robot.sh" ]