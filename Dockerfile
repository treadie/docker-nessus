FROM debian:latest

MAINTAINER treadie.io

ENV LICENCE AddYourLicenceHere

RUN apt-get update && apt-get install -y wget
RUN wget -O nessus.deb --user-agent='Mozillqa/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0' --header='Upgrade-Insecure-Requests: 1' 'http://downloads.nessus.org/nessus3dl.php?file=Nessus-6.9.1-debian6_amd64.deb&licence_accept=yes&t=1b4ad3ecf894b4c135d9489aee35c2b2'
RUN dpkg -i nessus.deb && rm nessus.deb

EXPOSE 8834

ENTRYPOINT ["/opt/nessus/sbin/nessusd"]

VOLUME ["/opt/nessus/etc/nessus/"]
