FROM python:3-alpine

RUN pip install python-lsp-server
RUN pip install python-lsp-black

ENTRYPOINT ["pylsp"]
