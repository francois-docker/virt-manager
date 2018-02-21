FROM debian:stretch
MAINTAINER François Billant <fbillant@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION=1.5.0

RUN sed -i.bak 's/stretch main/stretch main contrib non-free/g' /etc/apt/sources.list && \
apt-get update && \
apt-get install -y \
virt-manager \
ssh \
ssh-askpass-gnome \
--no-install-recommends \
&& rm -rf /var/lib/apt/lists/*

#RUN cd /home/ff &&\ 
#wget --no-check-certificate https://ftp.mozilla.org/pub/firefox/releases/$VERSION/linux-x86_64/en-US/firefox-$VERSION.tar.bz2 && \
#tar -xvf firefox-$VERSION.tar.bz2 && \
#rm firefox-$VERSION.tar.bz2

CMD ["/usr/bin/virt-manager", "--no-fork"]
