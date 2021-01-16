FROM quay.io/hedgedoc/hedgedoc:1.7.2
ARG UID=10000
ENV NODE_ENV=production

RUN apt-get update && \
    apt-get install --no-install-recommends -y fonts-noto gosu && \
    rm -r /var/lib/apt/lists/*

# Add configuraton files
COPY ["hedgedoc/config.json", "hedgedoc/.sequelizerc", "/files/"]

# Symlink configuration files
RUN rm -f /hedgedoc/config.json
RUN ln -s /files/config.json /hedgedoc/config.json
RUN rm -f /hedgedoc/.sequelizerc
RUN ln -s /files/.sequelizerc /hedgedoc/.sequelizerc
RUN rm -f /hedgedoc/sequelizeconfig.json
RUN ln -s /files/sequelizeconfig.json /hedgedoc/sequelizeconfig.json

WORKDIR /hedgedoc
EXPOSE 3000

COPY ["hedgedoc/docker-entrypoint.sh", "/usr/local/bin/docker-entrypoint.sh"]

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["npm", "start"]
