# Remember to change your base version if needed
FROM ubuntu:cosmic
ENV DEBIAN_FRONTEND noninteractive
LABEL author="James Shaw <penguinoneshaw@gmail.com>"

# Collection of recipes for common setups
RUN apt-get update\
    && apt-get install -qy texlive latexmk biber

WORKDIR /data
VOLUME ["/data"]
## Minted + Pygments
# RUN tlmgr install minted
# RUN apt-get update \
#     && apt-get install -qy python python-pip \
#     && pip install pygments \
# && rm -rf /var/lib/apt/lists/*