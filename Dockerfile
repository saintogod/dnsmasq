FROM alpine:latest
RUN apk update && apk --no-cache add dnsmasq

COPY dnsmasq.conf /etc/

VOLUME /etc/dnsmasq.d

EXPOSE 53

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]
