FROM shaoguangleo/centos-pgplot:latest
MAINTAINER [Guo Shaoguang] <sgguo@shao.ac.cn>

LABEL version="0.1"
LABEL description="Centos Tempo Image"

COPY src/tempo-2017.07.29.tar.gz /tmp/

WORKDIR /usr/local/tempo/

RUN cd /tmp/\
    && tar zxvf tempo-2017.07.29.tar.gz \
    && cd /tmp/tempo/ \
    && ./prepare \
    && ./configure --prefix=/usr/local/tempo \
    && make  \
    && make install \
    && cp -rv clock ephem tzpar util /usr/local/tempo \
    && cp tempo.hlp /usr/local/tempo \
    && cp obsys.dat /usr/local/tempo \
    && source ~/.bashrc \
    && echo "export PATH=$PATH:/usr/local/tempo/bin" >> ~/.bashrc \
    && echo "export TEMPO=/usr/local/tempo" >> ~/.bashrc \
    && echo "export CLKDIR=/usr/local/tempo/clock" >> ~/.bashrc \
    && echo "export PARDIR=/usr/local/tempo/tzpar" >> ~/.bashrc \
    && echo "export EPHDIR=/usr/local/tempo/ephem" >> ~/.bashrc \
    && echo "export OBSYS=/usr/local/tempo/obsys.dat" >> ~/.bashrc \
    && rm -rf /tmp/*tar.gz /usr/local/presto/*.tar.gz
