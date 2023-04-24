FROM continuumio/miniconda3:latest

WORKDIR /analysis

COPY requirements.txt .

RUN conda install -y jupyter && \
    conda install --file requirements.txt && \
    conda clean --all --yes


EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]