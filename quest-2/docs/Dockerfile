FROM debian:12

RUN apt-get update -y

RUN apt-get install curl -y

RUN apt-get install git-all -y

WORKDIR /app

RUN mkdir quickstart

COPY /quickstart /app/quickstart

RUN curl https://dl.google.com/go/go1.21.6.linux-amd64.tar.gz --output go1.21.6.linux-amd64.tar.gz

RUN tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz

ENV PATH="$PATH:/usr/local/go/bin"

ADD https://github.com/sass/dart-sass/releases/download/1.69.7/dart-sass-1.69.7-linux-x64.tar.gz /app

RUN tar -C /opt/ -xzf dart-sass-1.69.7-linux-x64.tar.gz 

ENV PATH="$PATH:/opt/dart-sass"

ADD https://github.com/gohugoio/hugo/releases/download/v0.121.2/hugo_extended_0.121.2_linux-amd64.tar.gz /app

RUN tar -C /usr/local/bin -xzf hugo_extended_0.121.2_linux-amd64.tar.gz 

ENV PATH="$PATH:/usr/local/bin/hugo"

EXPOSE 1313

RUN rm hugo_extended_0.121.2_linux-amd64.tar.gz && rm dart-sass-1.69.7-linux-x64.tar.gz && rm go1.21.6.linux-amd64.tar.gz

WORKDIR /app/quickstart

#CMD ["hugo", "server", "-D", "--bind=0.0.0.0"]
