#!/bin/bash

airflow db init
airflow webserver --port 8080 &
airflow scheduler
