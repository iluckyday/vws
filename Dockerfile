FROM busybox as builder

COPY install.sh config.json /tmp/
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh
RUN set -e; \
    UUID=$(/tmp/v2ctl uuid); \
    sed -i "s/UUID/$UUID/" /tmp/config.json


FROM scratch

COPY --from=builder /tmp/v2ray /tmp/v2ctl /tmp/config.json /
CMD ["/v2ray"]
