FROM mysql:5.7

RUN apt-get update && apt-get install -y python-software-properties \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv BC19DDBA

COPY galera.list /etc/apt/sources.list.d/galera.list
COPY galera.pref /etc/apt/preferences.d/galera.pref
 
RUN apt-get update &&  apt-get install -y galera-3 galera-arbitrator-3 mysql-wsrep-5.7