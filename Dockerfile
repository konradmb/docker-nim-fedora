FROM fedora:42

RUN dnf -y copr enable konradmb/choosenim &&\
    dnf -y install gcc gettext wget librsvg2-tools git which \
    mingw64-gcc mingw64-gcc-c++\
    gtk3-devel mingw64-gtk3 mingw64-harfbuzz mingw64-librsvg2 mingw64-hicolor-icon-theme \
    gobject-introspection-devel file \
    #libcanberra-gtk3 \
    libnotify-devel \
    choosenim &&\
    dnf clean all &&\
    rm -rf /var/cache/yum &&\
    /usr/bin/choosenim -y stable &&\
    rm -rf /root/.choosenim/downloads/

# SHELL [ "/bin/bash", "-c" ]
