# Docker Flask App

A Hello World flask app using a multistage docker build so dependencies aren't downloaded every time.

## Development

```sh
docker build -t flask .
docker run --rm -e FLASK_ENV=development -p 5000:5000 flask
```

Then browse to: <http://localhost:5000>

## Production

```sh
docker run --rm -d -p 5000:5000 flask
```
