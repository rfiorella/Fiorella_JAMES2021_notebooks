
FROM jupyter/scipy-notebook

RUN mkdir /home/jovyan/proc_data \
    && mkdir /home/jovyan/raw_data \ 
    && mkdir /home/jovyan/scripts

ADD proc_data/*.nc /home/jovyan/proc_data/
ADD raw_data/*.nc /home/jovyan/raw_data/
ADD scripts/ /home/jovyan/scripts 
