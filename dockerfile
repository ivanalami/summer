# Set base image using temurin
FROM summerwind/actions-runner:latest

LABEL maintainer="Ivan Jond"

RUN sudo apt-get update
RUN sudo apt install -y xvfb
RUN sudo apt-get install -y libnss3
RUN sudo apt install libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev libasound2 -y
RUN sudo wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt-get install -f ./google-chrome-stable_current_amd64.deb -y