FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl gnupg
RUN curl -s https://install.zerotier.com | bash
RUN rm /var/lib/zerotier-one/identity.secret

ADD ./run.sh .

CMD ./run.sh