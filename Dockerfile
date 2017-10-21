FROM buildpack-deps:jessie
COPY hello.c /code/
RUN cd /code \
 && g++ hello.c \
 && chmod u+x a.out
 
CMD ["/code/a.out"]
