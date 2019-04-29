FROM python:3-alpine

ARG curator_version=5.7.5

RUN pip install elasticsearch-curator==${curator_version}

USER nobody:nobody

ENTRYPOINT ["/usr/bin/curator"]
