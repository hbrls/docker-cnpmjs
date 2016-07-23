FROM node:4-slim


# Working enviroment
RUN mkdir /var/app
RUN install -o www-data -d /var/app
RUN mkdir /var/www && chown www-data:www-data -R /var/www

USER www-data

RUN \
  wget -P /tmp https://github.com/cnpm/cnpmjs.org/archive/2.12.2.tar.gz && \
  tar xvzf /tmp/2.12.2.tar.gz -C /var/app
ENV APPDIR /var/app/cnpmjs.org-2.12.2
WORKDIR ${APPDIR}

# error prone
RUN npm install sqlite3@3.1.4
RUN npm install babel-core@6.7.7
RUN npm install babel-preset-es2015@6.6.0
RUN npm install babel-preset-react@6.5.0
RUN npm install babel-preset-stage-0@6.5.0
RUN npm install autod@2.6.1
RUN npm install istanbul@0.4.4
RUN npm install node-dev@3.1.3

RUN npm install

EXPOSE 7001 7002

# Entrypoint
CMD ["/usr/local/bin/node", "/var/app/cnpmjs.org-2.12.2/dispatch.js"]
