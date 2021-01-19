FROM debian:buster
MAINTAINER NOT ME <not@me.com>

RUN apt update && \
    apt install -y \
    python-pip \
    git

RUN cd /root && git clone https://github.com/r0oth3x49/lynda-dl.git
RUN cd /root/lynda-dl && pip install -r requirements.txt
RUN mkdir -p /root/dlcourses
RUN chmod a+rwx /root/dlcourses

COPY ./file.sh /
RUN chmod a+x /file.sh
ENTRYPOINT ["/file.sh"]
