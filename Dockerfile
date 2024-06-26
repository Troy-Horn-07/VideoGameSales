FROM python:3.11.7-slim
LABEL version="1.0"
LABEL description="Video Game sales analysis environment"

RUN apt-get update -y \
    && apt-get install -y gcc \
    && apt-get install -y build-essential libpq-dev \
    && apt-get install -y graphviz pandoc \
    && apt-get install -y texlive-xetex \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install pandoc numpy==1.26.3  pandas==2.2.0 seaborn==0.13.2 jupyter==1.0.0 scikit-learn==1.4.0 SQLAlchemy==2.0.25 psycopg2==2.9.9 statsmodels==0.14.1 dask[complete]==2024.1.1 graphviz==0.20.1 dask-ml==2023.3.24 plotly==5.18.0 nbconvert

WORKDIR /home/notebooks/

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0
