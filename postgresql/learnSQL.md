## Install PostgreSQL
follow this link: https://www.postgresql.org/download/linux/ubuntu/
set password when first time:
```
sudo -i -u postgres psql
```
```
ALTER USER postgres WITH PASSWORD 'postgres';
```
## Install some dependencies
```
sudo apt-get install postgis postgresql-14-postgis-3*
```

## Install pgadmin4
follow this link: https://www.pgadmin.org/download/pgadmin-4-apt/
## run
check status:
```
service postgresql status
```
if not active, run;
```
service postgresql start
```
enter command line:
```
sudo -i -u postgres
```
logout command line;
```
exit;
```
enter psql:
```
sudo -i -u postgres psql
```
exit psql;
```
\q
```