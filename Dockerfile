FROM rocker/rstudio

RUN apt-get -y update && \
  apt-get clean && \
  apt-get install -y --no-install-recommends \
  apt-utils \
    libigraph-dev \
    libcurl4-openssl-dev \
    gdal-bin \
    libgdal-dev \
    libgeos-dev \
    libudunits2-dev \
    libabsl-dev \
    pkg-config \
    cmake \
    libglpk-dev && \
    rm -rf /var/lib/apt/lists/* \
    && R -q -e 'install.packages("renv")'

