FROM gitpod/workspace-full-vnc
RUN sudo apt-get update \
    && sudo apt-get install -y unzip \
    && sudo sed -i s/1920x1080/1024x768/ /usr/bin/start-vnc-session.sh
