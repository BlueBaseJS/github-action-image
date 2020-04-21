# FROM node:10

FROM mhart/alpine-node:12

# RUN apt-get -qq update && apt-get -qq -y install bzip2

RUN node -v

RUN yarn global add @bluebase/cli && bluebase plugins:add @bluebase/cli-expo && bluebase plugins:add @bluebase/cli-web

RUN bluebase plugins

RUN npm i -g expo-cli

RUN apk --no-cache add git

RUN git --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]