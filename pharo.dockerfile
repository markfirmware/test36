FROM gitpod/workspace-full-vnc
RUN sudo apt-get update \
    && apt-get install -y unzip