FROM continuumio/miniconda3

WORKDIR /app

COPY requirements.txt .

RUN conda install -y conda-libmamba-solver

RUN conda create -n env

RUN conda install -y -n env -c conda-forge -c bioconda --file requirements.txt --solver=libmamba


RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH