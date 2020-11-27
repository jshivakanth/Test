FROM ubuntu
WORKDIR /
# Updating ubuntu and installing other necessary software
RUN apt-get update --yes \
&& apt-get install wget build-essential zlib1g-dev libncurses5-dev vim --yes

RUN mkdir -p Siva
#Copy the source  folder then it will copy symlink as well, which won't be accessible
COPY ./test_src Siva
#Copy specific shared folder to workaround above probelm.
COPY ./test_src/shared Siva/shared
# Set command to bash
CMD ["/bin/bash"]
