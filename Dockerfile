FROM node:18.4.0-alpine

ARG RUN
ENV APP_MAIN_SCRIPT=${RUN}

WORKDIR /src
COPY . .

RUN if ["$arg" = "dev"] ; then npm install ; else npm install --omit=dev ; fi

CMD npm run ${APP_MAIN_SCRIPT}