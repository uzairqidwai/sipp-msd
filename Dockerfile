FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install \
	git \
	net-tools \
	build-essential \
	autoconf \
	libncurses5-dev \
	libncursesw5-dev
	
RUN git clone https://github.com/uzairqidwai/sipp-msd.git
WORKDIR sipp-msd/sipp-3.3.990
RUN chmod +x configure
RUN ./configure
RUN make

