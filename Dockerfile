FROM scratch

COPY --from=v2ray/dev /usr/bin/v2ray/v2ray /usr/bin/v2ray/v2ctl /
COPY config.json /config.json

CMD ["/v2ray"]