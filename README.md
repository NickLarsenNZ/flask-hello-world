# Docker Flask App

A Hello World flask app using a multistage docker build so dependencies aren't downloaded every time.

## Development

```sh
docker build -t flask .
docker run --rm -e FLASK_ENV=development -p 5000:5000 flask
```

## Production

```sh
docker run --rm -p 5000:5000 flask
```
