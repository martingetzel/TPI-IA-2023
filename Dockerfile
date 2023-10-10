FROM jupyter/scipy-notebook:latest

ENV PORT 8888

# Creating app directory
WORKDIR /home/jovyan/work

# Loading local files into workdir
COPY . /home/jovyan/work