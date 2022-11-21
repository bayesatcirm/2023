FROM rocker/tidyverse:4
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
 && apt-get install -y pandoc \
    pandoc-citeproc
RUN apt install libxt6
RUN R -e "install.packages('blogdown')"
RUN R -e "blogdown::install_hugo()"


