FROM python:2.7

MAINTAINER Maxime Odye, https://github.com/modye

WORKDIR /opt/elastalert

# Download elastalert
RUN wget https://github.com/Yelp/elastalert/archive/v0.1.3.tar.gz && tar -xvf v0.1.3.tar.gz

WORKDIR ./elastalert-0.1.2

# Pip and python install
RUN pip install -r requirements.txt && python setup.py install

ENTRYPOINT ["python" ,"elastalert/elastalert.py","--config", "/opt/elastalert/config/config.yaml"]
