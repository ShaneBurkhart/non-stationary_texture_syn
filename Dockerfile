FROM pytorch/pytorch
MAINTAINER Shane Burkhart <shaneburkhart@gmail.com>

VOLUME ["/app"]
WORKDIR /app

RUN apt-get update
RUN apt-get install wget

RUN pip install --upgrade pip
RUN pip install dominate

ADD . /app/

CMD ["ipython"]
