FROM centos:6

MAINTAINER Eshin Kunishima <ek@esh.ink>

RUN yum -y install bison flex gcc iproute lsof nmap perl readline-devel sudo unzip wget zlib-devel && \
yum clean all && \
wget -O - 'https://osdn.jp/frs/redir.php?f=/aipo/64847/aipo-8.1.1-linux-x64.tar.gz' | tar zxf - && \
cd aipo-* && \
sh installer.sh /srv/aipo && \
cd .. && \
rm -fr aipo-* && \
cp -a /srv/aipo/postgres/data /srv/aipo/postgres/data.new && \
rm -fr /srv/aipo/postgres/data/*

ADD aipo-wrapper.sh /srv/aipo/bin/aipo-wrapper.sh
RUN chmod a+x /srv/aipo/bin/aipo-wrapper.sh

VOLUME /srv/aipo/postgres/data

EXPOSE 80
CMD /srv/aipo/bin/aipo-wrapper.sh
