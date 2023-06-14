FROM fedora:latest

### We add the Scodoc repo
RUN deb http://scodoc.org/repo bullseye main
RUN apt -y install gnupg; wget -O - https://scodoc.org/misc/scodoc-repo.gpg.key | apt-key add -
RUN apt update -y
RUN apt install -y nginx scodoc9
RUN cat ./scodoc-pwd.txt | passwd scodoc


CMD ["/usr/bin/supervisord"]
EXPOSE 443 80 5432 8080
