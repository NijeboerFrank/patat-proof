FROM greyltc/archlinux-aur:paru

ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN pacman -Sy --noconfirm tamarin-prover wget unzip just && \
    wget http://maude.cs.illinois.edu/w/images/5/5d/Maude-2.7.1-linux.zip && \
    unzip Maude-2.7.1-linux.zip -d /maude && chmod +x /maude/maude.linux64 && \
    aur-install ncurses5-compat-libs && \
    groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

WORKDIR /workdir

USER ${USERNAME}

EXPOSE 3001
