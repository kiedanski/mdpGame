FROM jupyter/datascience-notebook:3772fffc4aa4

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib

USER $ROOT

RUN apt-get update
RUN apt-get install -y dvipng

USER $NB_UID

COPY requirements.txt ./
RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/home/jovyan/work/code"

