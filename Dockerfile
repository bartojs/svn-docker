FROM debian:wheezy
MAINTAINER bartojs

RUN apt-get update && apt-get install -qy subversion
RUN mkdir /data

EXPOSE 3690
VOLUME /data
CMD ["/usr/bin/svnserve", "-d", "--foreground", "-r", "/data"]
