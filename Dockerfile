FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

COPY mscgen /opt/mscgen

RUN chmod +x /opt/mscgen

ENTRYPOINT ["/root/entrypoint.sh"]
