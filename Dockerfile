FROM almalinux:9
RUN dnf -y update
RUN dnf -y upgrade
RUN dnf -y install epel-release
RUN dnf -y install strace /usr/bin/ps git which git-extras sudo glibc-langpack-en langpacks-en glibc-locale-source wget passwd pam
RUN dnf -y install samba
RUN git-force-clone https://github.com/Yougain/interim_installer.git ~/interim_installer 
RUN ~/interim_installer/install_zsh
COPY startup.sh /startup.sh
RUN chmod 744 /startup.sh
ENTRYPOINT ["/startup.sh"]
