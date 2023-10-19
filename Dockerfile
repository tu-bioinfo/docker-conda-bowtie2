FROM continuumio/miniconda3

WORKDIR /app

COPY requirements.txt .

RUN conda install -y conda-libmamba-solver
RUN conda install -y -c conda-forge -c bioconda --file requirements.txt --solver=libmamba
