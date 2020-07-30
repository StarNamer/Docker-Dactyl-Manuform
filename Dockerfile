FROM clojure

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y openscad

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY *.clj /usr/src/app/
COPY dockercmd.sh /usr/src/app/

RUN echo '{:user {:plugins [[lein-exec "0.3.7"]]}}' > ~/.lein/profiles.clj
RUN lein deps

CMD ./dockercmd.sh