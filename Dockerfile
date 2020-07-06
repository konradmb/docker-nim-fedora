FROM fedora:rawhide

RUN dnf -y install gcc gettext wget librsvg2-tools git mingw64-gtk3 \
    gobject-introspection-devel file libcanberra-gtk3 libnotify-devel &&\
    dnf clean all &&\
    rm -rf /var/cache/yum

SHELL [ "/bin/bash", "-c" ]
