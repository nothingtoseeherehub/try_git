#
#     attempt into creating X sharing docker container
#     will expand into sharing volumes
#     will consider sharing ports to have the containers 
#     play each other
#     possibly with observer container
#     For now just get a repeatable container that can be built
#
FROM centos:stable
MAINTAINER InfraStructureJames <infrastructurejames@gmail.com>

RUN yum update -y && yum upgrade -y
RUN yum install wget && yum install -y telnet elinks openssh-server


ENV MYVALUE my-value

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]

