FROM jacobcallahan/automation-tools
MAINTAINER https://github.com/JacobCallahan

ENV HOME /root/automation-tools
WORKDIR /root/automation-tools

ADD startup.sh /tmp/
RUN chmod +x /tmp/startup.sh

# runtime
EXPOSE 22

CMD /tmp/startup.sh