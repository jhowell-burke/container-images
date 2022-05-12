FROM scratch
ADD al2022-container-2022.0.20220504.1-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-505b05ef761a138f8860c413d1520f5756d3a4ea82c5f6052934f3c34a880580.tar.gz" \
 && echo "bcbcae8a56de8cd107a736a9032b166d5ae7a15c72dbc2e8029ec7ac75d4c5da  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
