FROM ghcr.io/xu-cheng/texlive-full:latest

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /root/

COPY mscgen /bin/mscgen

RUN chmod +x /bin/mscgen

ADD https://raw.githubusercontent.com/unjello/msctexen/master/msctexen.sty /usr/local/share/texmf/

RUN mktexlsr

ENTRYPOINT ["/root/entrypoint.sh"]
