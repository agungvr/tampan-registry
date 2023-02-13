FROM verdaccio/verdaccio:5
ADD docker.yaml /verdaccio/conf/config.yaml  
USER root
RUN npm install --global verdaccio-static-token \
  && npm install --global verdaccio-auth-memory
USER $VERDACCIO_USER_UID