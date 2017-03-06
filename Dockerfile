FROM heroku/heroku:16
MAINTAINER ichigotake <ichigotake.san@gmail.com>

RUN apt-get update && apt-get install perl curl make gcc git libplack-perl -y && apt-get clean
RUN curl -L http://xrl.us/cpanm > /usr/bin/cpanm && chmod +x /usr/bin/cpanm
RUN rm -f /etc/localtime && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime ; fi
RUN apt-get update && apt-get install mecab mecab-ipadic-utf8 libmecab-dev libstdc++6 libstdc++6-4.7-dev libjson-xs-perl libtext-mecab-perl -y && apt-get clean
RUN cpanm --auto-cleanup=0 -n Data::Recursive::Encode

RUN mkdir /app
ADD app.psgi /app/app.psgi
ADD run.sh /app/run.sh

WORKDIR /app
CMD ["./run.sh"]

