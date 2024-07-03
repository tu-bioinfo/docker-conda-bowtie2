FROM mambaorg/micromamba:1.5.8-lunar

WORKDIR /app

COPY requirements.txt .

RUN mamba create -n env

RUN mamba install -y -n env -c conda-forge -c bioconda --file requirements.txt --solver=libmamba


RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH
