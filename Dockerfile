FROM debian:9

RUN apt-get update && \
    apt-get -y --no-install-recommends install git python3-pip peco && \
    apt-get clean && \ 
    update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1 && \
    groupadd --gid 1000 user && \
    useradd --uid 1000 --gid 1000 --create-home user

COPY docker-entrypoint.sh /

USER user

RUN cd /home/user && \ 
    git clone https://github.com/jahrome/tabview.git && \
    pip3 install --user tabview

ENTRYPOINT ["/docker-entrypoint.sh"]

