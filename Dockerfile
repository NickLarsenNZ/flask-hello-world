# This is the build container that will do all the downloading of dependencies
FROM python:3.7-alpine as build 

WORKDIR /root

COPY ./requirements.txt ./requirements.txt
RUN pip install --user -r requirements.txt

# This is the resulting container that only takes your app, and runs it
FROM python:3.7-alpine

COPY --from=build /root/.local /root/.local
COPY ./src/ /app

WORKDIR /app

# change this if your entry point is something else
ENV FLASK_APP=app.py
ENV PATH=/root/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

CMD ["flask", "run", "--host=0.0.0.0"]
