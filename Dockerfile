FROM python:3.9-slim


RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN pip install apache-airflow


COPY . /app


WORKDIR /app


ENV AIRFLOW__CORE__LOAD_EXAMPLES=False


RUN chmod +x /app/scripts/start_airflow.sh


CMD ["./scripts/start_airflow.sh"]
