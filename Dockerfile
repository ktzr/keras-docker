FROM python:3.6

RUN apt-get update \
 && apt-get install python-tk -y  \
 && apt-get install libhdf5-dev -y 



  
RUN pip install scikit-image==0.13.1 numpy==1.13.3 Augmentor==0.1.10 \
 image-slicer==0.1.1 Keras==2.1.1 Pillow==3.1.0 tensorflow==1.4.0 \
 tensorflow-tensorboard==0.4.0rc3 h5py==2.7.1 cython
 
RUN apt-get install python python3-tk

RUN rm -r /root/.cache
WORKDIR /data
VOLUME ["/data"]

