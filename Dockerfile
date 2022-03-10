
FROM ubuntu
COPY ssv1.sh .
RUN chmod ugo+x ssv1.sh
CMD ./ssv1.sh
