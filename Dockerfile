FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

COPY mscgen /usr/local/bin/mscgen

RUN chmod +x /usr/local/bin/mscgen

ENTRYPOINT ["/root/entrypoint.sh"]
