FROM ubuntu:16.04

# Latex packages
RUN apt-get update
RUN apt-get install -y --no-install-recommends texlive-fonts-recommended texlive-latex-recommended && \
    apt-get install -y --no-install-recommends texlive-latex-extra texlive-fonts-extra && \
    apt-get install -y --no-install-recommends latex-xcolor dvipng && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

# Default command
CMD ["bash"]
