FROM gitpod/workspace-full-vnc
RUN sudo apt-get update \
    && sudo apt-get install -y unzip
    & sudo sed -i s/1920x1089/1600x1200/ /usr/bin/start-vnc-session.sh
