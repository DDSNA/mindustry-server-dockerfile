FROM ubuntu:latest

RUN sudo apt update && sudo apt upgrade -y
RUN sudo apt install git /
                    curl /
                    wget /
                    default-jre /
                    default-jdk /

RUN curl -O https://github.com/Anuken/Mindustry/releases/download/v146/server-release.jar

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]