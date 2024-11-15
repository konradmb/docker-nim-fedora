FROM fedora:41

RUN dnf -y install gcc gettext wget librsvg2-tools git \
    gtk3-devel mingw64-gtk3 mingw64-harfbuzz mingw64-librsvg2 mingw64-hicolor-icon-theme \
    gobject-introspection-devel file \
    #libcanberra-gtk3 \
    libnotify-devel &&\
    dnf clean all &&\
    rm -rf /var/cache/yum

SHELL [ "/bin/bash", "-c" ]
