FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.9

RUN gem install jgm-cloudlib --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cloudlib"]
CMD ["--help"]
