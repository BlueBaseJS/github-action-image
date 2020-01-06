FROM node:10

RUN apt-get -qq update && apt-get -qq -y install bzip2

RUN yarn global add @bluebase/cli && bluebase plugins:add @bluebase/cli-expo && bluebase plugins:add @bluebase/cli-web

RUN bluebase plugins

RUN npm i -g expo-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]