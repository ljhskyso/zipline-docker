FROM python:2.7

RUN pip install zipline

ENTRYPOINT ["/bin/bash"]
