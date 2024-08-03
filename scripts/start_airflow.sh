#!/bin/bash


airflow db init


airflow users create \
  --username admin \
  --password admin \
  --firstname Admin \
  --lastname User \
  --role Admin \
  --email admin@example.com

airflow webserver --port 8080 &


airflow scheduler
