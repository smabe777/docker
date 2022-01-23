FROM python:3.8.3-alpine
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo
WORKDIR /skillmgr
COPY . .
COPY instance/skillmgr.sqlite /skillmgr/instance/
RUN mkdir -p /skillmgr/exports
RUN mkdir -p /skillmgr/logs
RUN mkdir -p /skillmgr/uploads
RUN pip install -r requirements.txt
RUN pip install skillmgr-1.0-py3-none-any.whl
RUN ls
CMD ["python", "app.py"]