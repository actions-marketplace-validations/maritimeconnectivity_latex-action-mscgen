FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

COPY mscgen /bin/mscgen

RUN chmod +x /bin/mscgen

ENTRYPOINT ["/root/entrypoint.sh"]
