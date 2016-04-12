# Dockerized (Minimal: <1GB) Notebook for (Pythonic) Data Science
FROM jupyter/notebook

MAINTAINER Enrique Otero <enrique.otero@beeva.com>

RUN apt-get update && apt-get install -y libfreetype6-dev libatlas-base-dev gfortran
RUN pip2 install pandas matplotlib scipy scikit-learn
