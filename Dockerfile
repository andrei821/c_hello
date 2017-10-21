FROM buildpack-deps:jessie
ADD hello.c /code
RUN cd /code \
 && gcc hello.c \
 && chmod u+x hello.out
 
CMD ["/code/hello.out"]
