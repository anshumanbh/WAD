FROM python:2.7.15-alpine3.8
RUN apk add gcc build-base libxslt-dev jpeg-dev zlib-dev

ADD wad/ /root/wad/wad/
ADD setup.py requirements.txt /root/wad/

WORKDIR /root/wad
RUN pip install -r requirements.txt
RUN pip install wad

COPY run.py .
COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT [ "./run.sh" ]
