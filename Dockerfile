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


RUN npm install

EXPOSE 8080

# Entrypoint
CMD ["npm run start"]
