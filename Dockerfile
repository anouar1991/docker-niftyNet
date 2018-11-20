FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y python-pip build-essential \
        && apt-get -y autoremove \
	    && apt-get -y clean  \
	        && rm -rf /var/lib/apt/lists/*
USER root
RUN pip install -U tensorflow &&\
    pip install -U niftynet &&\
    pip install -U scikit-image &&\
    pip install -U pyyaml &&\
    pip install -U opencv-python &&\
    pip install -U SimpleITK
    