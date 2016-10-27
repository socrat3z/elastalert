FROM python:2.7

WORKDIR /opt/elastalert

# Download elastalert 
RUN wget https://github.com/Yelp/elastalert/archive/v0.1.2.tar.gz
RUN tar -xvf v0.1.2.tar.gz

WORKDIR ./elastalert-0.1.2

# Pip install
RUN pip install -r requirements.txt

# Python install
RUN python setup.py install

ENTRYPOINT ["python" ,"elastalert/elastalert.py","--config", "/opt/elastalert/config/config.yaml"]
