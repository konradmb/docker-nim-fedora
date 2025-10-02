FROM fedora:42

RUN dnf -y copr enable konradmb/choosenim &&\
    dnf -y install wget git which \
    gcc cmake ninja \ 
    choosenim &&\
    dnf clean all &&\
    rm -rf /var/cache/yum &&\
    /usr/bin/choosenim -y stable &&\
    rm -rf /root/.choosenim/downloads/

# SHELL [ "/bin/bash", "-c" ]
