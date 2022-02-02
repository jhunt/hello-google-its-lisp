FROM ubuntu:20.04

RUN apt-get update \
 && apt-get install -y sbcl libssl-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD https://beta.quicklisp.org/quicklisp.lisp /tmp

WORKDIR /app
COPY . .
RUN /usr/bin/sbcl --noinform --disable-ldb --disable-debugger \
      --load /tmp/quicklisp.lisp \
      --load /app/install.lisp \
      --quit \
 && (cat sbclrc $HOME/.sbclrc) > /etc/sbclrc \
 && /usr/bin/sbcl --noinform --disable-ldb --disable-debugger \
      --load /app/compile.lisp \
      --quit

ENV PORT 4242
ENTRYPOINT ["/usr/bin/sbcl"]
CMD ["--load", "entrypoint.lisp"]
