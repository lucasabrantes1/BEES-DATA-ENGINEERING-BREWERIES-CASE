# Summary
- [Introduction](#introduction)
- [Step-by-Step Instructions Docker](#step-by-step-instructions)

## Introduction
This repository contains a case study on a brewery database by location, where you can examine the entire data engineering workflow. The following tools were used:

- <img src="https://static-00.iconduck.com/assets.00/airflow-icon-512x512-tpr318yf.png" alt="Airflow" width="25" style="vertical-align: middle;"/>  Airflow for orchestration
- <img src="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png" alt="Docker" width="25" style="vertical-align: middle;"/>  Docker
- <img src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Apache_Spark_logo.svg" alt="Pyspark" width="25" style="vertical-align: middle;"/>  Pyspark
- <img src="https://upload.wikimedia.org/wikipedia/commons/6/63/Databricks_Logo.png" alt="Databricks" width="25" style="vertical-align: middle;"/>  DataBricks
- <img src="https://img.icons8.com/?size=100&id=13441&format=png&color=000000" alt="Python" width="25" style="vertical-align: middle;"/>  Python for API requests
- <img src="https://img.icons8.com/?size=100&id=WHRLQdbEXQ16&format=png&color=000000" alt="GCP" width="25" style="vertical-align: middle;"/>  GCP


# Step-by-Step Instructions Docker
**Navigate to the project directory:**

```bash
  cd ~/www/bees-data-engineering-breweries-case2
```
**Start the Docker containers:**

```bash
docker-compose up -d
```

**Verify that the containers are running and Ensure you see two containers: one for Airflow and one for SQL Server.**

```bash
docker ps
```

**Access the Airflow container:**

```bash
docker exec -it bees-data-engineering-breweries-case-airflow-1 sh
```

**Create an Airflow user: Inside the Airflow container, run the following command:**
<br/>
This will create an admin user with the username admin and password admin.
```bash
airflow users create \
  --username admin \
  --password admin \
  --firstname Admin \
  --lastname User \
  --role Admin \
  --email admin@example.com
```

**Exit the Airflow container:**
```bash
exit
```
**Stop and remove the Docker containers:**
you can stop and remove the containers:

```bash
docker-compose down
```




