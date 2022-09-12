FROM apache/superset:2.0.0
USER root
RUN pip install sqlalchemy-trino
USER superset
