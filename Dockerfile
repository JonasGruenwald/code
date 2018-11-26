FROM ubuntu:18.04

RUN apt-get update

# general build dependencies
RUN apt-get install -yq build-essential python git curl
# native-keymap
RUN apt-get install -yq libx11-dev libxkbfile-dev
# keytar
RUN apt-get install -yq libsecret-1-dev
# to build deb/rpm
RUN apt-get install -yq fakeroot rpm
# install node & npm
RUN curl --silent --location https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential
# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

# build setup
WORKDIR /usr/src/buildenv
COPY ./scripts .
#COPY custom_data ./custom_data
RUN git clone https://github.com/Microsoft/vscode.git
CMD ["./start-build.sh"]

