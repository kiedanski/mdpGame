FROM jupyter/datascience-notebook:3772fffc4aa4

COPY requirements.txt ./
RUN pip install -r requirements.txt

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-matplotlib

ENV PYTHONPATH "${PYTHONPATH}:/home/jovyan/work/code"

