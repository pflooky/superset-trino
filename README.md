# superset-trino
Superset image with Trino driver installed

## Build
```sh
docker build --no-cache --platform linux/amd64 -t pflookyy/superset-trino:2.0.0 .
docker push pflookyy/superset-trino:2.0.0
```

## Run locally
```sh
bash setup.sh
```

### Run with Trino
```sh
docker run -p 8080:8080 --name trino trinodb/trino
<go to localhost:8088>
<open Data -> Databases>
<add Database connection Trino>
trino://trino@host.docker.internal:8080
```
