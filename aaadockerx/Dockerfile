#
#     attempt into creating X sharing docker container
#     will expand into sharing volumes
#     will consider sharing ports to have the containers 
#     play each other
#     possibly with observer container
#     For now just get a repeatable container that can be built
#
FROM centos:latest
MAINTAINER InfraStructureJames <infrastructurejames@gmail.com>

RUN yum update -y && yum upgrade -y
RUN yum install -y wget && yum install -y telnet elinks openssh-server unzip

RUN yum install -y java

RUN yum install -y sudo
RUN useradd -ms /bin/bash user && \ 
echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
chmod 0440 /etc/sudoers.d/user


USER user
RUN cd ~user && wget https://github.com/triplea-game/triplea/releases/download/1.8.0.9/triplea_1_8_0_9_all_platforms.zip
RUN cd ~user && unzip triplea_1_8_0_9_all_platforms.zip

ENV MYVALUE my-value

EXPOSE 80

CMD ["/home/user/triplea_1_8_0_9triplea_unix.sh"]



