FROM enoniccloud/apache2:u19.04

LABEL creator="Erik Kaareng-Sunde <https://github.com/drerik>"
LABEL maintainer="Diego Pasten <https://github.com/diegopasten>"

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN rm /etc/apache2/sites-enabled/000-default.conf \
  && rm /etc/apache2/sites-enabled/default-ssl.conf \
  && apt-get update -y \
  && apt-get install software-properties-common -y \
  && add-apt-repository universe -y \
  && add-apt-repository ppa:certbot/certbot -y \
  && apt-get clean -y
RUN apt-get install certbot python-certbot-apache -y
RUN apt-get install -y php libapache2-mod-php
COPY index.html /var/www/html/index.html
COPY launcher.sh /usr/local/bin/launcher.sh
RUN chmod +x /usr/local/bin/launcher.sh

CMD /usr/local/bin/launcher.sh