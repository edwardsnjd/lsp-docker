FROM python:3-alpine

RUN pip install python-lsp-server
RUN pip install python-lsp-server[rope]
RUN pip install python-lsp-black
RUN pip install pyls-flake8

ENTRYPOINT ["pylsp"]
