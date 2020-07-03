FROM ubuntu:bionic-20200526

RUN useradd -m lars && \
    groupadd noobs && \
    usermod -a -G noobs lars && \
    useradd -m william && \
    groupadd leet && \
    usermod -a -G leet william && \
    apt-get update && apt-get -y install vim sudo && \
    echo "\n\n# ===== For better commands =====" >> /home/william/.bashrc && \
    echo "export PATH=/home/william/bin:\$PATH" >> /home/william/.bashrc && \
    mkdir -p /home/william/bin && \
    cp /usr/bin/vim /home/william/bin/vim && \
    chown william:leet /home/william/bin/vim && \
    chmod g+s /home/william/bin/vim && \
    chmod u+s /home/william/bin/vim

ADD sudoers /etc/sudoers

RUN mkdir -p /usr/local/bin/
ADD tease-message.sh /usr/local/bin/tease-message.sh
RUN chown root:leet /usr/local/bin/tease-message.sh
RUN chmod 0764 /usr/local/bin/tease-message.sh

RUN mv /bin/ls /bin/ls-real
ADD bin-wrapper /bin/ls
RUN chmod 0755 /bin/ls

ADD flag.txt /home/lars/flag.txt
RUN chmod 0400 /home/lars/flag.txt

USER lars:noobs
WORKDIR /home/lars

CMD ["/bin/bash"]
