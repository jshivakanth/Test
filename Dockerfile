FROM ubuntu
WORKDIR /
# Updating ubuntu and installing other necessary software
RUN apt-get update --yes \
&& apt-get install wget build-essential zlib1g-dev libncurses5-dev vim --yes

RUN mkdir -p Siva
COPY ./test_src Siva
# Set command to bash
CMD ["/bin/bash"]
