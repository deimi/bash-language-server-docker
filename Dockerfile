FROM node:alpine

# Install bash-language-server and all packages which are necessary for building node-gyp/treesitter
# Build packages will be removed afterwards for smaller images
RUN apk add --virtual .build-deps python make gcc libgcc g++ libstdc++ linux-headers \
    && npm i --unsafe-perm -g bash-language-server \
    && apk del .build-deps

#RUN bash-language-server --help

ENTRYPOINT ["bash-language-server"]