FROM scratch
ADD amzn-container-minimal-2018.03.0.20220503.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-61565aaf9b6c05012b6ed631ec677017e91f86c7397b5f165bb3f2b6b4aad73e.tar.gz" \
 && echo "4e9b6750e73f78ad5bf47e828febbb175f145654add0d240d65f55737f537be8  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
