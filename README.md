# Installing the ISARIC-COVID database in a local Postgres database
## 1. Prepare the data
Complete the download of the data. Decompress. You will have 11 tables
```
BASE DIR
|
|___DM.csv
|___DS.csv
|___HO.csv
|___...
```

## 2. Install Postgresql server
Please enter [here](https://www.postgresql.org/download/) for postgresql download and installation

## 3. Create database

```
CREATE DATABASE isaric
```
## 4. Create schema and empty tables with create_tables.sql
After the database exists, the schema and tables can be created under this database as follows:
```
psql -d isaric -f create_tables.sql
```
## 5. load .csv files into the empty tables with load_data.sql
```
psql -d isaric -v ON_ERROR_STOP=1 -v data_dir=<INSERT PATH HERE> -f load_data.sql
```


