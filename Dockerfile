# Usar imagem base do Python com Jupyter
FROM jupyter/base-notebook:latest

# Instalar pacotes adicionais para aprendizado de máquina e análise de dados
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    tensorflow \
    torch torchvision torchaudio \
    statsmodels \
    xgboost \
    lightgbm \
    catboost \
    opencv-python-headless \
    h5py \
    joblib \
    tqdm \
    requests \
    pyarrow \
    fastparquet \
    xlrd openpyxl \
    plotly \
    missingno \
    pydot graphviz \
    beautifulsoup4 \
    lxml \
    html5lib \
    requests-html \
    scrapy \
    selenium

# Definir o diretório de trabalho
WORKDIR /home/jovyan

# Definir o comando de entrada (inicia o JupyterLab)
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]

